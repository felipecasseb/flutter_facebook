import 'package:flutter_facebook/models/modelos.dart';

class Estoria{
  Usuario usuario;
  String urlImagem;
  bool foiVisualizado;

  Estoria({
    required this.usuario,
    required this.urlImagem,
    this.foiVisualizado = false
});
}