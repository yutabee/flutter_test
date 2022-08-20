import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  String nameText  = '';

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
            const TextField(
               onChanged: (value) {
                 nameText = value;
               },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                //ボタンを押した時の処理を書く
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SecondPage(nameText)),
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
