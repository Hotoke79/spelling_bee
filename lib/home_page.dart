import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spell_bee/controller.dart';
import 'package:spell_bee/drop.dart';
//import 'package:flutter/widgets.dart';
import 'all_words.dart';
import 'drag.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<String> _words = allWords.toList();
  
  late String _word, _dropWord;

@override
  void initState() {
    final r = Random().nextInt(_words.length);
    _word = _words[r];
    _dropWord = _word;
    // print(r);
    // print(allWords);
    // print(_word);
    // print(_words);
    final s = _word.characters.toList()..shuffle();
    _word = s.join(); //convert it back to the string
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp){
      Provider.of<Controller>(context, listen: false).setUp(total: _word.length);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(color: Colors.red,)),
          Expanded(
            flex: 3,
            child: Container(color: Colors.blue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: 
              _dropWord.characters.map((e)=>Drop(letter: e)).toList(),
            ),
            )),
          Expanded(
            flex: 3,
            child: Container(color: Colors.green,)),
          Expanded(
            flex: 3,
            child: Container(color: Colors.yellow,
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: 
            _word.characters.map((e) => Drag(letter: e,)).toList(),
            ),
            )),
          Expanded(
            flex: 1,
            child: Container(color: Colors.pink,)),
        ],
      ),
    );
  }
}


