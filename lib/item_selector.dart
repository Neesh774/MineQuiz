import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:path/path.dart';
import 'dart:io';



class SelectorWidget extends StatefulWidget{
  @override
  _SelectorWidgetState createState() => _SelectorWidgetState();
  
}

class _SelectorWidgetState extends State<SelectorWidget>{
  var images = new List(242);
  
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Home Page",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: AppBar(title: Image.asset('assets/minequiz.png', scale: 0.3)),
      body: Container(
      color: Color(0xffc7c7c7),
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Gap(40),
        Container(alignment: Alignment.center, child: Text("Featured Recipe", style:TextStyle(fontFamily: 'Minecrafter', fontSize: 30.0, color: Color(0xff373737)),)),
        Container(alignment: Alignment.center,child: Image.asset("assets/images/craft_arrow.png"))
        
      ],
    )
    )
    )
    );
  }
}
List imageSetter(var images){
  List titles;
  var alltitles = new File('assets/titles.txt').readAsString().then((String contents){
    titles = contents.split(":");
  });
  List paths;
  for(String title in titles){
    title.replaceAll("&", "and");
    title.replaceAll(" ", "");
    title.toLowerCase();
    paths.add("assets/images/craft_" + title);
  }
}
List itemGetter(){
   
}
//204x112