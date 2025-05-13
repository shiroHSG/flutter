void main() async{
  print("install loading...");
  var count=0;
  var isCompleted = false;

  install_complete().then((value) {
    isCompleted = value;
  });

  while(!isCompleted){
    await Future.delayed(Duration(seconds: 1));
    count++;
    print(count);
  }

  print('종료');
}

Future<bool> install_complete() async{
  await Future.delayed(Duration(seconds: 4));
  return true;
}