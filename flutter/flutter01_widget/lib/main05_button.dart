import 'package:flutter/material.dart';
/*
  * 박스의 margin, padding, 정렬위젯(Align())
 */

void main() {
  runApp(const MyApp());
}
//stless, stful 자동완성
/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override   //build->return 화면에 보여짐
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('앱제목')), //top
        body: Text('본문내용'), //body 필수
        bottomNavigationBar: BottomAppBar(child: Text('하단바'),)// bottom
      ),
    );
  }
}*/
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('예제'), backgroundColor: Color(0xFFf3edf7),
        ),
        /*
        body: Center(
          child: Container (
            width: 100, height: 100,
            margin: EdgeInsets.all(20), //컨테이너 밖
            padding: EdgeInsets.fromLTRB(20,10,20,70),  //컨테이너 안
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            child: Text('본문내용'),
          ),
        ),
        */
        body: Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: double.infinity,
            color: Colors.amberAccent,
            child: Text('본분 박스', style:TextStyle(color:Colors.red),),
            padding: EdgeInsets.all(20)
          ),
        ),

        bottomNavigationBar: BottomAppBar(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.ac_unit),
                Icon(Icons.account_balance),
                Icon(Icons.adb)
              ]
          )
        )
      ),
    );
  }
}
