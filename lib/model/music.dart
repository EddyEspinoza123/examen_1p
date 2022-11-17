class Music {
  final int id;
  final String nombre;
  final String fecha;
  final String duracion;
  final String autor;
  final String genero;
  bool read;

  Music({
    required this.id,
    required this.nombre,
    required this.fecha,
    required this.duracion,
    required this.autor,
    required this.genero,
    this.read = false,
  });
}