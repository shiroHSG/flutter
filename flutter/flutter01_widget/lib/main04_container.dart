import 'package:flutter/material.dart';
/*
  - Conatainer(), SizedBox()
    Container() : 사용할 수 있는 속성이 많음
    SizedBox() : width, height, child만 필요하면 이거 쓰면 됨
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
        body: SizedBox(
          // child: Text('안녕',
          //   style: TextStyle(
          //     color: Colors.red,
          //
          //     fontWeight: FontWeight.w700
          //   )
          // )
/*          child: Icon(
            Icons.ac_unit_outlined,
            color: Colors.purpleAccent,
            size: 100
          ),*/
          // child: TextButton(onPressed: (){}, child: Text('글자버튼')),
          // child: ElevatedButton(onPressed: (){}, child: Text('Elevated버튼'))
            child: IconButton(
                onPressed: (){
                  // 버튼을 클릭시 실행할 코드
                }, icon: Icon(Icons.favorite),
            )
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
