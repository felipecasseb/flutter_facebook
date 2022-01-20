import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook/uteis/colors_pallet.dart';

class ImagemPerfil extends StatelessWidget {

  final String urlImagem;
  final bool foiVizualizado;

  const ImagemPerfil({
    Key? key,
    required this.urlImagem,
    this.foiVizualizado = false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 22,
      backgroundColor: ColorsPallet.azulFacebook,
      child: CircleAvatar(
        radius: foiVizualizado ? 22 : 18,
        backgroundImage: CachedNetworkImageProvider(urlImagem),
        backgroundColor: Colors.grey[200],
      ),
    );
  }
}
