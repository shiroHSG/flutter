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
              title: Text('강남역'),
              actions: [Icon(Icons.search), Icon(Icons.menu), Icon(Icons.notification_add)]
          ),
          body: Container(
            padding: EdgeInsets.all(10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(child: Image.asset('assets/images/meow.jpg', width:150), flex: 4,),
                SizedBox(width: 15,),
                Flexible(
                  child: SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 15,
                        children: [
                          Text('고양이 집사 구함', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
                          Text('개냥이, 활발한 성격'),
                          Text('금액은 만나서 결정', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
                          SizedBox(
                            width: 150,
                            child : Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(Icons.favorite_border),
                                Text('4')
                              ],
                            ),

                          )
                        ],
                      )
                  ),
                  flex: 6,
                )
              ],
            ),
          )
      ),
    );
  }
}
