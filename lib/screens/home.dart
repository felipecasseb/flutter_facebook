import 'package:flutter/material.dart';
import 'package:flutter_facebook/components/area_criar_postagem.dart';
import 'package:flutter_facebook/components/area_estoria.dart';
import 'package:flutter_facebook/components/cartao_postagem.dart';
import 'package:flutter_facebook/components/circular_button.dart';
import 'package:flutter_facebook/components/lista_contatos.dart';
import 'package:flutter_facebook/components/lista_opcoes.dart';
import 'package:flutter_facebook/datas/dados.dart';
import 'package:flutter_facebook/models/modelos.dart';
import 'package:flutter_facebook/uteis/colors_pallet.dart';
import 'package:flutter_facebook/uteis/responsivo.dart';
import 'package:line_icons/line_icons.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final TrackingScrollController _scrollController = TrackingScrollController();

  @override

  void dispose(){
    _scrollController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsivo(
        mobile: HomeMobile(scrollController: _scrollController,),
        desktop:  HomeDesktop(scrollController: _scrollController,),
      )
    );
  }
}

class HomeMobile extends StatelessWidget {

  final TrackingScrollController scrollController;

  const HomeMobile({
    Key? key,
    required this.scrollController
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: scrollController,
      slivers: [

        SliverAppBar(
          backgroundColor: Colors.white,
          //expandedHeight: 250,
          floating: true,
          centerTitle: false,
          title: Text(
            "Facebook",
            style: TextStyle(
                color: ColorsPallet.azulFacebook,
                fontWeight: FontWeight.bold,
                fontSize: 28,
                letterSpacing: -1.2
            ),
          ),
          actions: [
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
        ),

        //area de conteudo

        SliverToBoxAdapter(
          child: AreaCriarPostagem(
            usuario: usuarioAtual,
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
          sliver: SliverToBoxAdapter(
            child: AreaEstoria(
              usuario: usuarioAtual,
              estorias: estorias,
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
                  (context, indice){
                Postagem postagem = postagens[indice];
                return CartaoPostagem(postagem: postagem);
              },
              childCount: postagens.length
          ),
        )
      ],
    );
  }
}

class HomeDesktop extends StatelessWidget {

  final TrackingScrollController scrollController;

  const HomeDesktop({
    Key? key,
    required this.scrollController
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 2,
            child: Padding(
              padding: EdgeInsets.all(12),
              child: ListaOpcoes(
                usuario: usuarioAtual,
              ),
            )
        ),
        Spacer(),
        Flexible(
          flex: 5,
            child: CustomScrollView(
              controller: scrollController,
              slivers: [
                SliverPadding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                  sliver: SliverToBoxAdapter(
                    child: AreaEstoria(
                      usuario: usuarioAtual,
                      estorias: estorias,
                    ),
                  ),
                ),

                SliverToBoxAdapter(
                  child: AreaCriarPostagem(
                    usuario: usuarioAtual,
                  ),
                ),

                SliverList(
                  delegate: SliverChildBuilderDelegate(
                          (context, indice){
                        Postagem postagem = postagens[indice];
                        return CartaoPostagem(postagem: postagem);
                      },
                      childCount: postagens.length
                  ),
                )
              ],
            )
        ),
        Spacer(),
        Flexible(
          flex: 2,
            child: Padding(
              padding: EdgeInsets.all(12),
              child: ListaContatos(
                usuarios: usuariosOnline,
              ),
            )
        ),
      ],
    );
  }
}

