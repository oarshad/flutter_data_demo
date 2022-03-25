import 'package:flutter_data/flutter_data.dart';
import 'package:flutter_data_demo/adapter.dart';
import 'package:json_annotation/json_annotation.dart';

part 'models.g.dart';

@DataRepository([TasksAdapter])
@JsonSerializable()
class Task with DataModel<Task> {
  @override
  final int? id;
  final String name;
  late final HasMany<Comment> comments;

  Task({this.id, required this.name, HasMany<Comment>? comments})
      : comments = comments ?? HasMany();

  @override
  String toString() {
    return 'Task{id: $id, name: $name, comments: $comments}';
  }
}

@DataRepository([CommentsAdapter])
@JsonSerializable()
class Comment with DataModel<Comment> {
  @override
  final int? id;
  final String comment;

  Comment({this.id, required this.comment});

  @override
  String toString() {
    return 'Comment{id: $id, comment: $comment}';
  }
}
