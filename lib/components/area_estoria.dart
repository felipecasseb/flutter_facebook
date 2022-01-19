import 'package:flutter/material.dart';
import 'package:flutter_facebook/components/cartao_estoria.dart';
import 'package:flutter_facebook/models/modelos.dart';

class AreaEstoria extends StatelessWidget {

  final Usuario usuario;
  final List<Estoria> estorias;

  const AreaEstoria({
    Key? key,
    required this.usuario,
    required this.estorias
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.white,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        scrollDirection: Axis.horizontal,
        itemCount: estorias.length,
          itemBuilder: (context, indice){
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

