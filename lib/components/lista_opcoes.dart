import 'package:flutter/material.dart';
import 'package:flutter_facebook/components/botao_imagem_perfil.dart';
import 'package:flutter_facebook/models/modelos.dart';
import 'package:flutter_facebook/uteis/colors_pallet.dart';
import 'package:line_icons/line_icons.dart';

class ListaOpcoes extends StatelessWidget {

  final Usuario usuario;
  final List<List> _opcoes = const [
    [LineIcons.userFriends, ColorsPallet.azulFacebook, "Amigos"],
    [LineIcons.facebookMessenger, ColorsPallet.azulFacebook, "Mensagens"],
    [LineIcons.flag, Colors.orange, "Páginas"],
    [LineIcons.users, ColorsPallet.azulFacebook, "Grupos"],
    [Icons.storefront_outlined, ColorsPallet.azulFacebook, "Marketplace"],
    [Icons.ondemand_video, Colors.red, "Assistir"],
    [LineIcons.calendar, Colors.deepPurple, "Eventos"],
    [LineIcons.chevronCircleDown, Colors.black45, "Ver mais"]
  ];

  const ListaOpcoes({
    Key? key,
    required this.usuario
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          padding: EdgeInsets.symmetric(vertical: 10),
          itemCount: _opcoes.length,
          itemBuilder: (context, indice){
            List item = _opcoes[indice];

            if(indice == 0){
              return Padding(
                  padding: EdgeInsets.symmetric(vertical: 6),
                child: BotaoImagemPerfil(
                  usuario: usuario,
                  onTap: (){},
                ),
              );
            }

            return Padding(
              padding: EdgeInsets.symmetric(vertical: 6),
              child: Opcao(
                icone: item[0],
                cor:  item[1],
                texto: item[2],
                onTap: (){},
              )
            );
          }
      ),
    );
  }
}


class Opcao extends StatelessWidget {

  final IconData icone;
  final Color cor;
  final String texto;
  final VoidCallback onTap;

  const Opcao({
    Key? key,
    required this.texto,
    required this.icone,
    required this.cor,
    required this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icone, color: cor, size: 35,),
          SizedBox(width: 4,),
          Flexible(
              child: Text(texto, style: TextStyle(fontSize: 16), overflow: TextOverflow.ellipsis,)
          )
        ],
      ),
    );
  }
}

