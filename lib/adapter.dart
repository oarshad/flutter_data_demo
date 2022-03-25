import 'package:flutter_data/flutter_data.dart';

mixin TasksAdapter<T extends DataModel<T>> on RemoteAdapter<T> {
  @override
  String get baseUrl =>
      "https://raw.githubusercontent.com/oarshad/flutter_data_demo/main/json";

  @override
  String urlForFindAll(Map<String, dynamic> params) => "tasks.json";
}

mixin CommentsAdapter<T extends DataModel<T>> on RemoteAdapter<T> {
  @override
  String get baseUrl =>
      "https://raw.githubusercontent.com/oarshad/flutter_data_demo/main/json";

  @override
  String urlForFindAll(Map<String, dynamic> params) => "comments.json";
}
