import 'package:flutter/material.dart';
import 'package:test_flutter/first_page.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('セカンド'),
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          //ボタンを押した時の処理を書く
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FirstPage()),
          );
        },
        child: const Text('次の画面へ'),
      )),
    );
  }
}
