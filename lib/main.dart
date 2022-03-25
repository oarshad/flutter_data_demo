import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'main.data.dart';

void main() {
  runApp(ProviderScope(
    child: const MyApp(),
    overrides: [configureRepositoryLocalStorage()],
  ));
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Demo App"),
        ),
        body: ref.watch(repositoryInitializerProvider()).when(
            data: (_) => Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: () async {
                            final tasks = await ref.tasks.findAll(remote: true);
                            for (var element in tasks) {
                              print(element);
                              element.comments.toList().forEach((comment) => print(comment));
                            }
                          },
                          child: const Text("Remote Data")),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                          onPressed: () async {
                            final tasks =
                                await ref.tasks.findAll(remote: false);
                            for (var element in tasks) {
                              print(element);
                              element.comments.toList().forEach((comment) => print(comment));
                            }
                          },
                          child: const Text("Offline Data"))
                    ],
                  ),
                ),
            loading: () => const Center(child: Text("Loading")),
            error: (e, s) => const Center(child: Text("Error"))),
      ),
    );
  }
}
