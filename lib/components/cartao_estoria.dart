import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook/components/imagem_perfil.dart';
import 'package:flutter_facebook/models/estoria.dart';
import 'package:flutter_facebook/uteis/colors_pallet.dart';
import 'package:flutter_facebook/uteis/responsivo.dart';

class CartaoEstoria extends StatelessWidget {

 final Estoria estoria;

  const CartaoEstoria({
    Key? key,
    required this.estoria
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: CachedNetworkImage(
            imageUrl: estoria.urlImagem,
            height: double.infinity,
            width: 110,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: double.infinity,
          width: 110,
          decoration: BoxDecoration(
            gradient: ColorsPallet.degradeEstoria,
            borderRadius: BorderRadius.circular(12)
          ),
        ),
        Positioned(
          top: 8,
            right: 8,
            child: ImagemPerfil(
              urlImagem: estoria.usuario.urlImagem ,
              foiVizualizado: estoria.foiVisualizado,
            )
        ),
        Positioned(
          bottom: 8,
            left: 8,
            right: 8,
            child: Text(
              estoria.usuario.nome,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            )
        )
      ],
    );
  }
}
