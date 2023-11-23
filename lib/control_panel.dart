import 'package:flutter/cupertino.dart';
import 'package:sneake_game/control_button.dart';
import 'package:sneake_game/direction.dart';
import 'package:flutter/material.dart';
class ControlPanel extends StatelessWidget {
  final void Function(Direction direction) onTapped ;

  const ControlPanel({Key? key, required this.onTapped}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: 0,
        right: 0,
        bottom: 50,
        child: Row(
          children: [
            Expanded(
              child: Row(

                children: [
                  Expanded(
                      child: Container()
                  ),
                  ControlButton(
                      onPressed: (){
                        onTapped(Direction.left) ;
                      },
                      icon: Icon(Icons.arrow_left)
                  ) ,
                ],
              ),
            ),
            Expanded(
                child: Column(
                  children: [
                    ControlButton(
                        onPressed: (){
                          onTapped(Direction.up) ;
                        },
                        icon: Icon(Icons.arrow_upward)
                    ) ,
                    SizedBox(
                      height: 40,
                    ),
                    ControlButton(
                        onPressed: (){
                          onTapped(Direction.down) ;
                        },
                        icon: Icon(Icons.arrow_downward)
                    ) ,
                  ],
                ),
            ),
            ControlButton(
                onPressed: (){
                  onTapped(Direction.right) ;
                },
                icon: Icon(Icons.arrow_right)
            ) ,
            Expanded(
                child: Container()
            ),
          ],
        )
    );
  }
}
