// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:test_flutter/first_page.dart';

class SecondPage extends StatelessWidget {
  SecondPage(this.name); //コンストラクター or イニシャライザー
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('セカンド'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset('images/maggi-whiston---_q96cdBso-unsplash.jpg'),
          Text(
            name,
            style: const TextStyle(fontSize: 50),
          ),
          ElevatedButton(
            onPressed: () {
              //ボタンを押した時の処理を書く
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FirstPage()),
              );
            },
            child: const Text('前の画面へ'),
          )
        ]),
      ),
    );
  }
}
