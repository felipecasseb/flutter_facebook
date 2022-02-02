import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook/components/imagem_perfil.dart';
import 'package:flutter_facebook/models/modelos.dart';

class CartaoPostagem extends StatelessWidget {

  final Postagem postagem;

  const CartaoPostagem({
    Key? key,
    required this.postagem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          //cabeçalho
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CabecalhoPostagem(postagem: postagem),
                Text(postagem.descricao)
              ],
            ),
          ),
          //imagem postagem
          Container(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: CachedNetworkImage(imageUrl: postagem.urlImagem,),
          ),
          //area de estatisticas
          Container(
            color: Colors.red, width: 100, height: 100,
          )
        ],
      )
    );
  }
}

class CabecalhoPostagem extends StatelessWidget {
  
  final Postagem postagem;
  
  const CabecalhoPostagem({required this.postagem, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ImagemPerfil(urlImagem: postagem.usuario.urlImagem, foiVizualizado: true,),
        SizedBox(width: 8,),
        Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(postagem.usuario.nome, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                Row(
                  children: [
                    Text("${postagem.tempoAtras} - ",),
                    Icon(Icons.public, size: 12, color: Colors.grey[600],)
                  ],
                )
              ],
            ),
        ),
        IconButton(
            onPressed: (){},
            icon: Icon(Icons.more_horiz)
        )
      ],
    );
  }
}

