import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook/components/imagem_perfil.dart';
import 'package:flutter_facebook/models/modelos.dart';
import 'package:flutter_facebook/uteis/colors_pallet.dart';
import 'package:flutter_facebook/uteis/responsivo.dart';
import 'package:line_icons/line_icons.dart';

class CartaoPostagem extends StatelessWidget {

  final Postagem postagem;

  const CartaoPostagem({
    Key? key,
    required this.postagem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    bool isDesktop = Responsivo.isDesktop(context);

    return Card(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: isDesktop? 5 : 0),
      elevation: isDesktop? 1 : 0,
      shape: isDesktop
          ? RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
      )
          : null,
      child: Container(
          margin: EdgeInsets.symmetric(vertical: 8),
          padding: EdgeInsets.symmetric(vertical: 8),
          color: Colors.white,
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: EstatisticasPostagem(postagem: postagem,),
              )
            ],
          )
      ),
    );
  }
}

class EstatisticasPostagem extends StatelessWidget {

  final Postagem postagem;

  const EstatisticasPostagem({required this.postagem, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: ColorsPallet.azulFacebook,
                shape: BoxShape.circle
              ),
              child: Icon(Icons.thumb_up, size: 10, color: Colors.white,),
            ),
            SizedBox(width: 4,),
            Expanded(
                child: Text("${postagem.curtidas}", style: TextStyle(color: Colors.grey[700]),),
            ),
            Text("${postagem.comentarios} comentários", style: TextStyle(color: Colors.grey[700]),),
            SizedBox(width: 10,),
            Text("${postagem.compartilhamentos} compartilhamentos", style: TextStyle(color: Colors.grey[700]),)
          ],
        ),
        Divider(thickness: 1.2,),
        Row(
          children: [
            BotaoPostagem(
                icone: Icon(LineIcons.thumbsUpAlt, color: Colors.grey[700],),
                onTap: (){},
                texto: "Curtir"
            ),
            BotaoPostagem(
                icone: Icon(LineIcons.alternateCommentAlt, color: Colors.grey[700],),
                onTap: (){},
                texto: "Comentar"
            ),
            BotaoPostagem(
                icone: Icon(LineIcons.share, color: Colors.grey[700],),
                onTap: (){},
                texto: "Compartilhar"
            )
          ],
        )
      ],
    );
  }
}


class BotaoPostagem extends StatelessWidget {

  final String texto;
  final Icon icone;
  final VoidCallback onTap;

  const BotaoPostagem({
    Key? key,
    required this.icone,
    required this.onTap,
    required this.texto
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Material(
          child: InkWell(
            onTap: onTap,
            child: Row(
              children: [
                icone,
                SizedBox(width: 4,),
                Text("$texto", style: TextStyle(color: Colors.grey[700], fontWeight: FontWeight.bold),)
              ],
            ),
          ),
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

