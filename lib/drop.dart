import 'package:flutter/material.dart';

class Drop extends StatelessWidget {
  const Drop({required this.letter,
    super.key,
  });

  final String letter;

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    bool accepted = false;
    return SizedBox(
      width: size.width*0.15,
      height: size.height*0.15,
      child: Center(
        child: DragTarget(
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
        
        onAcceptWithDetails: (data){
          accepted = true;
        },
        
          builder: (context, candidateData, rejectedDataa) {
            //if(candidateData.contains(letter)){
            if(accepted){
            return Text(letter, style: Theme.of(context).textTheme.displayLarge,);
            }else{
              return Container(color: Colors.amber, width: 50, height: 50);
            }
            
          }
        ),
      ),
    );
  }
}