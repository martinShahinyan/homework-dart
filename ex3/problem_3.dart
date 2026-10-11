Future<int> delayedValue(int value) async {
  await Future.delayed(Duration(milliseconds: 100));
  return value;
}
Future<int> sumValues(int a, int b) async {
  int val1 = await delayedValue(a);
  int val2 = await delayedValue(b);
  return val1 + val2;
}
void main() async {
  int result = await sumValues(10, 20);
  print('Gumary: $result');
}
