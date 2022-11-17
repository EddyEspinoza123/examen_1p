import 'package:flutter/material.dart';

import '../constants.dart';
import '../model/music.dart';

class DetailScreen extends StatelessWidget {
  final Music music;
  const DetailScreen({Key? key, required this.music}) : super(key: key);

   @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(music.nombre),
        ),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('FECHA: ${music.fecha}', style: fromTextStyle),
              const SizedBox(height: 10.0),
              const Divider(color: primaryColor),
              const SizedBox(height: 10.0),
             // Text(music.autor, style: subjectTextStyle),
              const SizedBox(height: 5.0),
              Text('DURACCION: ${music.duracion}', style: bodyTextStyle),
              const SizedBox(height: 10.0),
              const Divider(color: primaryColor),
              const SizedBox(height: 10.0),
              const SizedBox(height: 5.0),
              Text('AUTOR: ${music.autor}', style: bodyTextStyle),
              const SizedBox(height: 10.0),
              const Divider(color: primaryColor),
              const SizedBox(height: 10.0),
              Text('GENERO: ${music.genero} ', style: bodyTextStyle),
                ElevatedButton(
          style: ElevatedButton.styleFrom(
          primary: Color.fromARGB(184, 8, 230, 226), // background
          onPrimary: Colors.white, // foreground
        ),
        onPressed: () { 
          Navigator.pop(context);
        },
        child: Text('Done'), 
)
            ],
          ),
        ));
  }
}