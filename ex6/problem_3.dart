Future<int> getNumber(int value) async {
  await Future.delayed(Duration(milliseconds: 100));
  if (value <= 0) {
    throw Exception('Arjeqy petq e lini drakan!');
  }
  return value;
}
Future<int> safeGetNumber(int value) async {
  try {
    return await getNumber(value);
  } catch (e) {
    return 0;
  }
}
void main() async {
  print(await safeGetNumber(5));
  print(await safeGetNumber(-3));
}
