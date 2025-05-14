void main() async{
  print("install loading...");
  await for(int value in install_complete()) {
    print(value);
  }
  print('종료');
}

Stream<int> install_complete() async*{
  for(int i=1; i<=5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}