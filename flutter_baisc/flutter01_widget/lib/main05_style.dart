import 'package:flutter/material.dart';
/*
  - Container(), SizedBox()
    Container() : 사용할 수 있는 속성이 많음
    SizedBox() : width, height, child만 필요하면 이거 쓰면 됨

  * style
*/

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('예제'), backgroundColor: Color(0xFFf3edf7)),
        body: SizedBox(
          /*  글자 스타일
          child: Text('안녕',
            style: TextStyle(
              color: Colors.red,
              fontSize: 50,
              fontWeight: FontWeight.w700
            ),
          ),
          */

          /* icon 스타일
          child: Icon(
            Icons.ac_unit_outlined,
            color: Colors.purpleAccent,
            size: 100,  // 기본사이즈 24
          ),
          */
          // 버튼 스타일
          // child: TextButton(onPressed: (){}, child: Text('글자버튼')),
          // child: ElevatedButton(onPressed: (){}, child: Text('Elevated버튼')),
          child: IconButton(
              onPressed: (){
                // 버튼을 클릭시 실행할 코드
              },
              icon: Icon(
                Icons.favorite,
                color: Colors.deepOrange,
                size: 50,
              )),
        )
      ),
    );
  }
}