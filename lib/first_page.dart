import 'package:flutter/material.dart';
import 'package:test_flutter/second_page.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ファースト'),
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          //ボタンを押した時の処理を書く
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondPage()),
          );
        },
        child: const Text('次の画面へ'),
      )),
    );
  }
}
