import 'package:flutter/material.dart';

class Drop extends StatelessWidget {
  const Drop({required this.letter,
    super.key,
  });

  final String letter;

  @override
  Widget build(BuildContext context) {

    return DragTarget(
      onWillAcceptWithDetails: (data){
        if(data==letter){
          print('aCCPTED');
          return true;
        }else{
          print('rejected');
          return false;
        }
      },
      builder: (context, candidateData, rejectedDataa) {
        return Text(letter, style: Theme.of(context).textTheme.displayLarge,);
      }
    );
  }
}