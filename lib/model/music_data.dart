import 'music.dart';

class Backend {
  /// Singleton pattern used here.
  static final Backend _backend = Backend._internal();

  factory Backend(){
    return _backend;
  }

  Backend._internal();

  final _music = [
    Music(
      id: 1, 
      nombre: 'LLoraras', 
      fecha: '2020', 
      duracion: '5 min',
      autor: 'Billos', 
      genero: 'Salsa'),

      Music(
      id: 2, 
      nombre: 'Devorame otra vez', 
      fecha: '2000', 
      duracion: '4 min',
      autor: 'Lalo', 
      genero: 'Vallenato'),

      Music(
      id: 3, 
      nombre: 'Rap Bruto', 
      fecha: '2018', 
      duracion: '5 min',
      autor: 'Residente', 
      genero: 'Rap'),

      Music(
      id: 4, 
      nombre: 'La Gasolina', 
      fecha: '2000', 
      duracion: '4 min',
      autor: 'Daddy Yankee', 
      genero: 'Reggaeton'),

      Music(
      id: 5, 
      nombre: 'Propuesta Indecente', 
      fecha: '2012', 
      duracion: '3 min',
      autor: 'Romeo Santos', 
      genero: 'Bachata')
  ];

  List<Music> getMusic(){
    return _music;
  }

  //Marks email identified by its id as read.
  void markMusicAsRead(int id){
    final index = _music.indexWhere((music) => music.id == id);
    _music[index].read = true;
  }

  //Deletes email identified by its id.
  void deleteEmail(int id) {
    _music.removeWhere((music) => music.id == id);
  }
}
