import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  int _counter = 10;
  Timer? timer;

  @override
  void initState() {
    // super.initState();
    timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        setState(() {
          if (_counter > 0) {
            _counter--;
          } else {
            print('タイマー終了！');
          }
        });
      },
    );
  }

  void stopTimer() {
    if (timer != null) {
      timer!.cancel();
      timer = null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.errorContainer,
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              _counter.toString(),
              style: TextStyle(fontSize: 30),
            ),
            ElevatedButton(
              onPressed: () {
                stopTimer();
                Navigator.pop(context);
              },
              child: Text("戻れるよん"),
            ),
            ElevatedButton(
              onPressed: stopTimer,
              child: Text("タイマーを止める"),
            ),
          ],
        ),
      ),
    );
  }
}
