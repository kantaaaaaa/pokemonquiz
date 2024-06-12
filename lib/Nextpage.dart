import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Nextpage extends StatelessWidget {
  Nextpage({super.key, required this.text_input});

  String text_input;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("ネクストページだにょ"),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                const SizedBox(height: 50),
                Text(
                  text_input,
                  style: TextStyle(fontSize: 30),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const SizedBox(height: 50),
                Text(
                  'Qこのポケモンはだれ？',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            SizedBox(
              height: 100,
              width: 500,
              child: Image.asset('iamges/pika2.png'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text('ピチュー'),
                ),
                const SizedBox(width: 100),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('ピカチュウ'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 80),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('サトシ'),
                ),
                const SizedBox(width: 100),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('ミミッキュ'),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("戻れるよん"),
            ),
          ],
        ),
      ),
    );
  }
}
