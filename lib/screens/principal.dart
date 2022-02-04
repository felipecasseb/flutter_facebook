import 'package:flutter/material.dart';
import 'package:flutter_facebook/components/navegacao_abas.dart';
import 'package:flutter_facebook/components/navegacao_abas_desktop.dart';
import 'package:flutter_facebook/datas/dados.dart';
import 'package:flutter_facebook/screens/home.dart';
import 'package:flutter_facebook/uteis/responsivo.dart';
import 'package:line_icons/line_icons.dart';

class Principal extends StatefulWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {

  final List<Widget> _paginas = [
    Home(),
    Scaffold(backgroundColor: Colors.green,),
    Scaffold(backgroundColor: Colors.yellow,),
    Scaffold(backgroundColor: Colors.purple,),
    Scaffold(backgroundColor: Colors.black54,),
    Scaffold(backgroundColor: Colors.orange,)
  ];

  List<IconData> _icones = [
    Icons.home,
    Icons.ondemand_video,
    Icons.storefront_outlined,
    Icons.flag_outlined,
    LineIcons.bell,
    Icons.menu
  ];

  int _indiceAbaSelecionada = 0;

  @override
  Widget build(BuildContext context) {

    final bool isDesktop = Responsivo.isDesktop(context);

    Size tamanho = MediaQuery.of(context).size;

    return DefaultTabController(
        length: _icones.length,
        child: Scaffold(
          appBar: isDesktop 
              ? PreferredSize(
              child: NavegacaoAbasDesktop(
                usuario: usuarioAtual,
                icones: _icones,
                indiceAbaSelecionada: _indiceAbaSelecionada,
                onTap: (indice){
                  setState(() {
                    _indiceAbaSelecionada = indice;
                  });
                },
              ),
              preferredSize: Size(tamanho.width, 100)
          )
              : null,
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: _paginas
          ),
          bottomNavigationBar: isDesktop ? null : NavegacaoAbas(
            icones: _icones,
            indiceAbaSelecionada: _indiceAbaSelecionada,
            onTap: (indice){
              setState(() {
                _indiceAbaSelecionada = indice;
              });
            },
          ),
        )
    );
  }
}