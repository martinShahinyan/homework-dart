Future<String> runTask(String name, int milliseconds) async {
  await Future.delayed(Duration(milliseconds: milliseconds));
  return "Task $name katarvac e";
}
Future<List<String>> runTasks() async {
  Future<String> taskA = runTask('A', 100);
  Future<String> taskB = runTask('B', 50);
  Future<String> taskC = runTask('C', 150);
  String resultA = await taskA;
  String resultB = await taskB;
  String resultC = await taskC;
  return [resultA, resultB, resultC];
}
void main() async {
  List<String> results = await runTasks();
  for (var res in results) {
    print(res);
  }
}
