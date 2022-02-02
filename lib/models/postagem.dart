import 'package:flutter_facebook/models/modelos.dart';

class Postagem{
  Usuario usuario;
  String descricao;
  String tempoAtras;
  String urlImagem;
  int curtidas;
  int comentarios;
  int compartilhamentos;

  Postagem({
   required this.usuario,
   required this.comentarios,
   required this.compartilhamentos,
   required this.curtidas,
   required this.descricao,
   required this.tempoAtras,
   required this.urlImagem
});
}