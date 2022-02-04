import 'package:flutter/material.dart';
import 'package:flutter_facebook/components/imagem_perfil.dart';
import 'package:flutter_facebook/models/usuario.dart';

class BotaoImagemPerfil extends StatelessWidget {

  final Usuario usuario;
  final VoidCallback onTap;


  const BotaoImagemPerfil({
    Key? key,
    required this.usuario,
    required this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ImagemPerfil(urlImagem: usuario.urlImagem,foiVizualizado: true,),
          SizedBox(width: 4,),
          Flexible(
              child: Text(usuario.nome, style: TextStyle(fontSize: 16), overflow: TextOverflow.ellipsis,)
          )
        ],
      ),
    );
  }
}
