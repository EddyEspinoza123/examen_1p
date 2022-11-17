import 'package:flutter/material.dart';

import '../constants.dart';
import '../model/music.dart';

class MusicWidget extends StatelessWidget {
  final Music music;
  final Function onTap;

  const MusicWidget(
      {Key? key,
      required this.music,
      required this.onTap,
      })
      : super(key: key);
  
    @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (DragEndDetails details) {
      },
      onLongPress: () {
      },
      onTap: () {
        onTap(music);
      },
      
      child: Container(
      
        padding: const EdgeInsets.all(10.0),
        height: 120.0,

        child: Row(
          children: <Widget> [   
            Expanded(
              flex: 1,
              child: Container(
                height: 12.0,  
              ),
              
            ),
            Expanded(
              flex: 9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
              
                  Text('AUTOR: ${music.autor}',
                      style: dateTextStyle),
                  Text('NOMBRE: ${music.nombre}', style: fromTextStyle),
                  Text('GENERO:${music.genero}', style: subjectTextStyle),
                ],
              ),
            )
       
          ],
        ),
      ),
    );
  }
}