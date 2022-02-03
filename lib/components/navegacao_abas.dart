import 'package:flutter/material.dart';
import 'package:flutter_facebook/uteis/colors_pallet.dart';

class NavegacaoAbas extends StatelessWidget {

  final List<IconData> icones;
  final int indiceAbaSelecionada;
  final Function(int) onTap;


  const NavegacaoAbas({
    Key? key,
    required this.icones,
    required this.indiceAbaSelecionada,
    required this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      onTap: onTap,
        indicator: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: ColorsPallet.azulFacebook,
              width: 3
            )
          )
        ),
        tabs: icones.asMap().map((indice, icone){
          return MapEntry(
              indice,
              Tab(
                icon: Icon(
                  icone,
                  color: indiceAbaSelecionada == indice
                  ? ColorsPallet.azulFacebook
                  : Colors.black54,
                  size: 30,
                ),
              )
          );
        }).values.toList()
    );
  }
}
