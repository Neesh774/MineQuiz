import 'dart:async';

import 'package:flutter/material.dart';
import 'package:minequiz/widget/messaging_widget.dart';
import 'package:minequiz/item_selector.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String appTitle = 'MineQuiz';
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: appTitle,
        home: MainPage(appTitle: appTitle),
      );
}

class MainPage extends StatelessWidget {
  final String appTitle;

  const MainPage({this.appTitle});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'MineQuiz',
        theme: ThemeData(primarySwatch: Colors.brown),
        home: MineQuizHome(),
        debugShowCheckedModeBanner: false,
      );
}
class MineQuizHome extends StatefulWidget{
  @override
  _MineQuizHomeState createState() => _MineQuizHomeState();
}
class _MineQuizHomeState extends State<MineQuizHome>{
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3),
    ()=>Navigator.pushReplacement(context, 
                                  MaterialPageRoute(builder:
                                                    (context) => 
                                                    SelectorWidget()
                                                    )
                                  )
    );
  }
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Splash",
      home: Container(
      color: Color(0xffc7c7c7),
      child: Image.asset('assets/minequiz.png')
    )
    );
  }
}