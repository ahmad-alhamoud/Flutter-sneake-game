import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ControlButton extends StatelessWidget {
  final Function() onPressed ;
  final Icon icon ;

  const ControlButton({Key? key, required this.onPressed, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
        opacity : 0.5,
      child: Container(
       width: 70,
       height: 70,
       child: FittedBox(
         child: FloatingActionButton(
           backgroundColor: Colors.green,
           elevation: 0,
           onPressed: onPressed,
           child: icon,
         ),
       ),
      ),
    );
  }
}
