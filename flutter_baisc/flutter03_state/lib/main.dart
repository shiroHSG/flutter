import 'package:flutter/material.dart';
/*
  * input
  * TextField()는 저장되지 않음, 별도의 변수에 저장
 */
void main() {
  runApp(
    MaterialApp(
      home: MyApp()
    )
  );
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var name = ['홍길동', '더조은', '빛나리'];
  var total = 3;

  // 1. 수정함수 만들기
  addFriend() {
    setState(() {
      total++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Text('dialog'),
          onPressed: (){
            showDialog(
              context: context,
              builder: (context) {
                // 2. 자식에게 보내기
                return CustomDialog(friendState : addFriend);
              }
            );
          }
        ),
        appBar: AppBar(
          backgroundColor: Color(0xFFf3edf7),
          leading: Icon(Icons.list),
          title: Text(total.toString()),
          actions: [Icon(Icons.search), Icon(Icons.share)],
        ),
        body: ListView.builder(
          itemBuilder: (context, i) {
            return ListTile(
              leading: Image.asset('assets/user${i+1}.png'),
              title: Text(name[i]),
            );
          },
          itemCount: 3,
        ),
        bottomNavigationBar: CustomBottom(),
    );
  }
}

class CustomDialog extends StatelessWidget {
// 3. 자식은 등록하기   매개변수에 넣고 (this.이름), 변수 만들기
  CustomDialog({super.key, this.friendState});
  final friendState;
  var inputData = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        width: 300,
        height: 300,
        child: Column(
          children: [
            // 사용시 (controller : 변수명) : controller은 입력값을 관리하는 역할
            TextField(controller: inputData),
            // 3. 사용하기
            Text(""),
            TextButton(
              onPressed: (){
                friendState();  // 함수 호출시 괄호 붙여준다
                print(inputData);
                Navigator.pop(context);
              },
              child: Text('완료')),
            TextButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text('취소'))
          ],
        ),
      ),
    );
  }
}


class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.phone),
          Icon(Icons.article_outlined),
          Icon(Icons.contacts)
        ],
      ),
    );
  }
}