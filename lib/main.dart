import 'dart:js';

import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:word_pair/secondPage.dart';
//import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.black),
      home: RandomWords()
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  _RandomWordState createState() => _RandomWordState();
}


class _RandomWordState extends State {
  
  Widget build(BuildContext context) {
     return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text("Word Pair"),
          ),
          actions: [
            IconButton(
              onPressed: ()=> navigateToSecondScreen(context) , 
              icon: Icon(Icons.list, color: Colors.white,)
            )
          ],
          ),
        body: buildList(),
      );
  }
}


Widget buildList() {

 final _WordPairList = <WordPair>[];
  
  return ListView.builder(
    padding: const EdgeInsets.all(8),
    itemBuilder: (BuildContext context, int item) {
          
        if(item.isOdd) return Divider();  

       _WordPairList.addAll(generateWordPairs().take(10));
       return nameTile(_WordPairList[item]);
    });
}

Widget nameTile(WordPair word) {
    return ListTile(
      title: Text("${word.asPascalCase}", style: TextStyle(fontSize: 18.0),),
      trailing: Icon(Icons.favorite),
    );
}

void navigateToSecondScreen(BuildContext context) {
   Navigator.of(context).push(
     MaterialPageRoute(builder: (context) => SecondPage())
  );
}