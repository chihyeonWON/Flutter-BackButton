import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  DateTime? currentBackPressTime;

  Future<bool> onWillPop(){
    DateTime now = DateTime.now();
    if(currentBackPressTime == null ||
        now.difference(currentBackPressTime!) > Duration(seconds: 2)){
      currentBackPressTime = now;
      final msg = "'뒤로'버튼을 한 번 더 누르면 종료됩니다.";
      Fluttertoast.showToast(msg: msg);
      return Future.value(false);
    }
    return Future.value(true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: WillPopScope(
        onWillPop: onWillPop,
        child:Scaffold(
          appBar: AppBar(title:Text('뒤로 가기 두 번으로 앱 종료')),
        )
        )
    );
  }
}
