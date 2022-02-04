import 'package:flutter/material.dart';
import 'package:flutter_facebook/components/cartao_estoria.dart';
import 'package:flutter_facebook/datas/dados.dart';
import 'package:flutter_facebook/models/modelos.dart';
import 'package:flutter_facebook/uteis/responsivo.dart';

class AreaEstoria extends StatelessWidget {

  final Usuario usuario;
  final List<Estoria> estorias;
  final bool adicionarEstoria;

  const AreaEstoria({
    Key? key,
    required this.usuario,
    required this.estorias,
    this.adicionarEstoria = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    bool isDesktop = Responsivo.isDesktop(context);

    return Container(
      height: 200,
      color: isDesktop ? Colors.transparent : Colors.white,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        scrollDirection: Axis.horizontal,
        itemCount: 1 + estorias.length,
          itemBuilder: (context, indice){

            if(indice==0){
              Estoria estoriaUsuario = Estoria(
                usuario: usuarioAtual,
                urlImagem: usuarioAtual.urlImagem
              );

              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 4),
                child: CartaoEstoria(

                  estoria: estoriaUsuario,
                ),
              );

            }
            Estoria estoria = estorias[indice-1];

            {
              Estoria estoria = estorias[indice];
              return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4),
                child: CartaoEstoria(
                  estoria: estoria,
                ),
              );
            }
          }
      ),
    );
  }
}

