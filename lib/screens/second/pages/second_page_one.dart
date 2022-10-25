import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class MySecondPageFragmentOne extends StatefulWidget {
  const MySecondPageFragmentOne({super.key, required this.title});

  final String title;

  @override
  State<MySecondPageFragmentOne> createState() => _MySecondPageFragmentOneState();
}

class _MySecondPageFragmentOneState extends State<MySecondPageFragmentOne> {

  var stringToSave = TextEditingController();

  static const storage = FlutterSecureStorage(); // FlutterSecureStorage를 storage로 저장
  dynamic secretInfo = ''; // storage에 있는 유저 정보를 저장

  //flutter_secure_storage 사용을 위한 초기화 작업
  @override
  void initState() {
    super.initState();

    // 비동기로 flutter secure storage 정보를 불러오는 작업
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _asyncMethod();
    });
  }

  _asyncMethod() async {
    // read 함수로 key값에 맞는 정보를 불러오고 데이터타입은 String 타입
    // 데이터가 없을때는 null을 반환
    secretInfo = await storage.read(key:'stringToSave');

    // user의 정보가 있다면 로그인 후 들어가는 첫 페이지로 넘어가게 합니다.
    if (secretInfo != null) {
      print('Info exists');
      stringToSave.text = secretInfo;
    } else {
      print('No Info');
    }
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Center(
        
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Container(padding: EdgeInsets.all(20),child: Column(
            // Column is also a layout widget. It takes a list of children and
            // arranges them vertically. By default, it sizes itself to fit its
            // children horizontally, and tries to be as tall as its parent.
            //
            // Invoke "debug painting" (press "p" in the console, choose the
            // "Toggle Debug Paint" action from the Flutter Inspector in Android
            // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
            // to see the wireframe for each widget.
            //
            // Column has various properties to control how it sizes itself and
            // how it positions its children. Here we use mainAxisAlignment to
            // center the children vertically; the main axis here is the vertical
            // axis because Columns are vertical (the cross axis would be
            // horizontal).
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: stringToSave,
                decoration: InputDecoration(
                  labelText: 'String To Save',
                ),
              ),
              ElevatedButton(
                child: const Text('data'),
                onPressed: () {
                  log("SS");
                  saveSecret(storage, stringToSave.text);
                },
              )
            ],)
        ),
      )
    );
  }
}

Future<void> saveSecret (FlutterSecureStorage storage, String secret) async {
  await storage.write(key:'stringToSave', value: secret);
}