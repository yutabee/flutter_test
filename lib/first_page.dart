// ignore_for_file: must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:test_flutter/second_page.dart';

class FirstPage extends StatelessWidget {
  String nameText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ファースト'),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
            TextField(
              onChanged: (text) {
                nameText = text;
              },
            ),
            ElevatedButton(
              onPressed: () {
                //ボタンを押した時の処理を書く
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondPage(nameText)),
                );
              },
              child: const Text('次の画面へ'),
            )
          ],
        ),
      )),
    );
  }
}
