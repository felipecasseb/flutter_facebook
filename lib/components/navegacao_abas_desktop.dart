import 'package:flutter/material.dart';
import 'package:flutter_facebook/components/botao_imagem_perfil.dart';
import 'package:flutter_facebook/components/circular_button.dart';
import 'package:flutter_facebook/components/navegacao_abas.dart';
import 'package:flutter_facebook/models/modelos.dart';
import 'package:flutter_facebook/uteis/colors_pallet.dart';
import 'package:line_icons/line_icons.dart';

class NavegacaoAbasDesktop extends StatelessWidget {

  final List<IconData> icones;
  final int indiceAbaSelecionada;
  final Function(int) onTap;
  final Usuario usuario;

  const NavegacaoAbasDesktop({
    Key? key,

    required this.icones,
    required this.indiceAbaSelecionada,
    required this.onTap,
    required this.usuario,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 65,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.black12,
              offset: Offset(0,2),
              blurRadius: 4
          )
        ]
      ),
      child: Row(
        children: [
          Expanded(
              child: Text(
                "Facebook",
                style: TextStyle(
                    color: ColorsPallet.azulFacebook,
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    letterSpacing: -1.2
                ),
              ),
          ),
          Expanded(
              child: NavegacaoAbas(
                icones: icones,
                indiceAbaSelecionada: indiceAbaSelecionada,
                onTap: onTap,
                bottomIndicator: true,
              ),
          ),
          Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
            children: [
              BotaoImagemPerfil(
                usuario: usuario,
                onTap: (){},
              ),
              CircularButton(
                icone: Icons.search,
                iconeTamanho: 30,
                onPressed: (){},
              ),
              CircularButton(
                icone: LineIcons.facebookMessenger,
                iconeTamanho: 30,
                onPressed: (){},
              )
            ],
          )
          ),
        ],
      ),
    );
  }
}
