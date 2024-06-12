import 'dart:async';
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pokemon_quiz/Nextpage.dart';
import 'package:pokemon_quiz/testpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

// void timer() {
//   Timer(const Duration(seconds: 5), handleTimeout);
// }

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// class Data {
//   int num;

//   Data({required this.num});
// }

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 10;
  // @override
  // void initState() {
  //   super.initState();
  //   // 1. Timer.periodic : 新しい繰り返しタイマーを作成します
  //   // 1秒ごとに _counterを1ずつ足していく
  //   Timer.periodic(
  //     // 第一引数：繰り返す間隔の時間を設定
  //     const Duration(seconds: 1),
  //     // 第二引数：その間隔ごとに動作させたい処理を書く
  //     (Timer timer) {
  //       _counter--;
  //       setState(() {});
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.errorContainer,
        title: Text(widget.title),
      ),
      body: Container(
        // color: Colors.amber,
        height: 300,
        width: double.infinity,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Nextpage(text_input: 'Level1')),
                  );
                },
                child: Text('Level1'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Nextpage(text_input: 'Level2')),
                  );
                },
                child: Text('Level2'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Nextpage(text_input: 'Level3')),
                  );
                },
                child: Text('Level3'),
              ),
              ElevatedButton(
                onPressed: () {
                  // ここにボタンを押した時に呼ばれるコードを書く
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TestPage()),
                  );
                },
                child: Text('aaaa'),
              ),
            ],
          ),
        ),
      ),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
