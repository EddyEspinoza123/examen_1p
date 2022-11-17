import 'package:flutter/material.dart';

import '../constants.dart';
import '../model/music.dart';
import '../model/music_data.dart';
import '../widgets/music_widget.dart';
import '../screens/detail_screen.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key, required this.title}) : super(key: key);

  final String title;

    @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  // State.
 

  var music = Backend().getMusic();
 


  void showDetail( Music music) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return DetailScreen( music: music,);
    }));

    setState(() {
      
     // music = Backend().getMusic();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.separated(
        itemCount: music.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(
          color: primaryColor,
          indent: 40.0,
          endIndent: 20.0,
        ),
          itemBuilder: (BuildContext context, int index) => MusicWidget(
          music: music[index],
          onTap: showDetail,
        
        ),
      ),
    );
  }
}