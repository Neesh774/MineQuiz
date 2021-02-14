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
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Image.asset("assets/minequiz.png", fit: BoxFit.contain, height:32),
          centerTitle: true
        ),
        body: SelectorWidget(),
        backgroundColor: const Color(0xffc7c7c7),
      );
}