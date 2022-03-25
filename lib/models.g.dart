// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Task _$TaskFromJson(Map<String, dynamic> json) => Task(
      id: json['id'] as int?,
      name: json['name'] as String,
      comments: json['comments'] == null
          ? null
          : HasMany<Comment>.fromJson(json['comments'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TaskToJson(Task instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'comments': instance.comments,
    };

Comment _$CommentFromJson(Map<String, dynamic> json) => Comment(
      id: json['id'] as int?,
      comment: json['comment'] as String,
    );

Map<String, dynamic> _$CommentToJson(Comment instance) => <String, dynamic>{
      'id': instance.id,
      'comment': instance.comment,
    };

// **************************************************************************
// RepositoryGenerator
// **************************************************************************

// ignore_for_file: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member, non_constant_identifier_names

mixin $TaskLocalAdapter on LocalAdapter<Task> {
  @override
  Map<String, Map<String, Object?>> relationshipsFor([Task? model]) => {
        'comments': {
          'name': 'comments',
          'type': 'comments',
          'kind': 'HasMany',
          'instance': model?.comments
        }
      };

  @override
  Task deserialize(map) {
    for (final key in relationshipsFor().keys) {
      map[key] = {
        '_': [map[key], !map.containsKey(key)],
      };
    }
    return _$TaskFromJson(map);
  }

  @override
  Map<String, dynamic> serialize(model) => _$TaskToJson(model);
}

// ignore: must_be_immutable
class $TaskHiveLocalAdapter = HiveLocalAdapter<Task> with $TaskLocalAdapter;

class $TaskRemoteAdapter = RemoteAdapter<Task> with TasksAdapter<Task>;

//

final tasksLocalAdapterProvider =
    Provider<LocalAdapter<Task>>((ref) => $TaskHiveLocalAdapter(ref.read));

final tasksRemoteAdapterProvider = Provider<RemoteAdapter<Task>>((ref) =>
    $TaskRemoteAdapter(
        ref.watch(tasksLocalAdapterProvider), taskProvider, tasksProvider));

final tasksRepositoryProvider =
    Provider<Repository<Task>>((ref) => Repository<Task>(ref.read));

final _taskProvider = StateNotifierProvider.autoDispose
    .family<DataStateNotifier<Task?>, DataState<Task?>, WatchArgs<Task>>(
        (ref, args) {
  final adapter = ref.watch(tasksRemoteAdapterProvider);
  final notifier =
      adapter.strategies.watchersOne[args.watcher] ?? adapter.watchOneNotifier;
  return notifier(args.id!,
      remote: args.remote,
      params: args.params,
      headers: args.headers,
      alsoWatch: args.alsoWatch,
      finder: args.finder);
});

AutoDisposeStateNotifierProvider<DataStateNotifier<Task?>, DataState<Task?>>
    taskProvider(Object? id,
        {bool? remote,
        Map<String, dynamic>? params,
        Map<String, String>? headers,
        AlsoWatch<Task>? alsoWatch,
        String? finder,
        String? watcher}) {
  return _taskProvider(WatchArgs(
      id: id,
      remote: remote,
      params: params,
      headers: headers,
      alsoWatch: alsoWatch,
      finder: finder,
      watcher: watcher));
}

final _tasksProvider = StateNotifierProvider.autoDispose.family<
    DataStateNotifier<List<Task>>,
    DataState<List<Task>>,
    WatchArgs<Task>>((ref, args) {
  final adapter = ref.watch(tasksRemoteAdapterProvider);
  final notifier =
      adapter.strategies.watchersAll[args.watcher] ?? adapter.watchAllNotifier;
  return notifier(
      remote: args.remote,
      params: args.params,
      headers: args.headers,
      syncLocal: args.syncLocal,
      finder: args.finder);
});

AutoDisposeStateNotifierProvider<DataStateNotifier<List<Task>>,
        DataState<List<Task>>>
    tasksProvider(
        {bool? remote,
        Map<String, dynamic>? params,
        Map<String, String>? headers,
        bool? syncLocal,
        String? finder,
        String? watcher}) {
  return _tasksProvider(WatchArgs(
      remote: remote,
      params: params,
      headers: headers,
      syncLocal: syncLocal,
      finder: finder,
      watcher: watcher));
}

extension TaskDataX on Task {
  /// Initializes "fresh" models (i.e. manually instantiated) to use
  /// [save], [delete] and so on.
  ///
  /// Can be obtained via `ref.read`, `container.read`
  Task init(Reader read, {bool save = true}) {
    final repository = internalLocatorFn(tasksRepositoryProvider, read);
    final updatedModel =
        repository.remoteAdapter.initializeModel(this, save: save);
    return save ? updatedModel : this;
  }
}

extension TaskDataRepositoryX on Repository<Task> {
  TasksAdapter<Task> get tasksAdapter => remoteAdapter as TasksAdapter<Task>;
}

// ignore_for_file: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member, non_constant_identifier_names

mixin $CommentLocalAdapter on LocalAdapter<Comment> {
  @override
  Map<String, Map<String, Object?>> relationshipsFor([Comment? model]) => {};

  @override
  Comment deserialize(map) {
    for (final key in relationshipsFor().keys) {
      map[key] = {
        '_': [map[key], !map.containsKey(key)],
      };
    }
    return _$CommentFromJson(map);
  }

  @override
  Map<String, dynamic> serialize(model) => _$CommentToJson(model);
}

// ignore: must_be_immutable
class $CommentHiveLocalAdapter = HiveLocalAdapter<Comment>
    with $CommentLocalAdapter;

class $CommentRemoteAdapter = RemoteAdapter<Comment>
    with CommentsAdapter<Comment>;

//

final commentsLocalAdapterProvider = Provider<LocalAdapter<Comment>>(
    (ref) => $CommentHiveLocalAdapter(ref.read));

final commentsRemoteAdapterProvider = Provider<RemoteAdapter<Comment>>((ref) =>
    $CommentRemoteAdapter(ref.watch(commentsLocalAdapterProvider),
        commentProvider, commentsProvider));

final commentsRepositoryProvider =
    Provider<Repository<Comment>>((ref) => Repository<Comment>(ref.read));

final _commentProvider = StateNotifierProvider.autoDispose.family<
    DataStateNotifier<Comment?>,
    DataState<Comment?>,
    WatchArgs<Comment>>((ref, args) {
  final adapter = ref.watch(commentsRemoteAdapterProvider);
  final notifier =
      adapter.strategies.watchersOne[args.watcher] ?? adapter.watchOneNotifier;
  return notifier(args.id!,
      remote: args.remote,
      params: args.params,
      headers: args.headers,
      alsoWatch: args.alsoWatch,
      finder: args.finder);
});

AutoDisposeStateNotifierProvider<DataStateNotifier<Comment?>,
        DataState<Comment?>>
    commentProvider(Object? id,
        {bool? remote,
        Map<String, dynamic>? params,
        Map<String, String>? headers,
        AlsoWatch<Comment>? alsoWatch,
        String? finder,
        String? watcher}) {
  return _commentProvider(WatchArgs(
      id: id,
      remote: remote,
      params: params,
      headers: headers,
      alsoWatch: alsoWatch,
      finder: finder,
      watcher: watcher));
}

final _commentsProvider = StateNotifierProvider.autoDispose.family<
    DataStateNotifier<List<Comment>>,
    DataState<List<Comment>>,
    WatchArgs<Comment>>((ref, args) {
  final adapter = ref.watch(commentsRemoteAdapterProvider);
  final notifier =
      adapter.strategies.watchersAll[args.watcher] ?? adapter.watchAllNotifier;
  return notifier(
      remote: args.remote,
      params: args.params,
      headers: args.headers,
      syncLocal: args.syncLocal,
      finder: args.finder);
});

AutoDisposeStateNotifierProvider<DataStateNotifier<List<Comment>>,
        DataState<List<Comment>>>
    commentsProvider(
        {bool? remote,
        Map<String, dynamic>? params,
        Map<String, String>? headers,
        bool? syncLocal,
        String? finder,
        String? watcher}) {
  return _commentsProvider(WatchArgs(
      remote: remote,
      params: params,
      headers: headers,
      syncLocal: syncLocal,
      finder: finder,
      watcher: watcher));
}

extension CommentDataX on Comment {
  /// Initializes "fresh" models (i.e. manually instantiated) to use
  /// [save], [delete] and so on.
  ///
  /// Can be obtained via `ref.read`, `container.read`
  Comment init(Reader read, {bool save = true}) {
    final repository = internalLocatorFn(commentsRepositoryProvider, read);
    final updatedModel =
        repository.remoteAdapter.initializeModel(this, save: save);
    return save ? updatedModel : this;
  }
}

extension CommentDataRepositoryX on Repository<Comment> {
  CommentsAdapter<Comment> get commentsAdapter =>
      remoteAdapter as CommentsAdapter<Comment>;
}
