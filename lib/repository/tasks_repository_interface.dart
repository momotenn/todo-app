import 'package:todo_app/common/model/task.dart';

abstract class TasksRepositoryInterface {
  Future<List<Task>> getTasksList();
  Future<List<Task>> updateTasksList(Task task);
  Future<List<Task>> addTask(Task task);
  Future<List<Task>> removeTask(String uuid);
}
