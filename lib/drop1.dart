import 'package:flutter/material.dart';

class Drop extends StatelessWidget {
  const Drop({required this.letter,
    super.key,
  });

  final String letter;

  @override
  Widget build(BuildContext context) {
    //bool accepted = false;
    return DragTarget(
      onWillAccept: (data){
        // ignore: unrelated_type_equality_checks
        if(data == letter){
          print('aCCPTED');
          return true;
        }else{
          print('rejected');
          return false;
        }
      },

 builder: (context, candidateData, rejectedDataa) {
        //if(candidateData.contains(letter))
        return Text(letter, style: Theme.of(context).textTheme.displayLarge,);      
       }
    );
  }
}