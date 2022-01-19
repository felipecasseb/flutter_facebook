import 'package:flutter_facebook/models/modelos.dart';

Usuario usuarioAtual = Usuario(
    nome: "Jamilton Damasceno",
    urlImagem: "https://source.unsplash.com/EQFtEzJGERg/800x600");

/* Lista de usuários online */
List<Usuario> usuariosOnline = [
  Usuario(
      nome: "José Renato de almeida",
      urlImagem: "https://source.unsplash.com/UJLAMjEjISo/800x600"),
  Usuario(
      nome: "Maria Almeida",
      urlImagem: "https://source.unsplash.com/0wRXAXqIp58/800x600"),
  Usuario(
      nome: "Fernando Lima de albuquerque filho",
      urlImagem: "https://source.unsplash.com/59HOrlAKTOU/800x600"),
  Usuario(
      nome: "Marcela Faria",
      urlImagem: "https://source.unsplash.com/GXzHGgzraHc/800x600"),
  Usuario(
      nome: "Carlos Eduardo",
      urlImagem: "https://source.unsplash.com/y8yimL21z8s/800x600"),
  Usuario(
      nome: "Joana Santos",
      urlImagem: "https://source.unsplash.com/PXWiHU7pbeg/800x600"),
  Usuario(
      nome: "Rodrigo Caio",
      urlImagem: "https://source.unsplash.com/MS0RHQ1enek/800x600"),
  Usuario(
      nome: "Pedro do Carmo",
      urlImagem: "https://source.unsplash.com/9ChfwZzv4ys/800x600"),
];

/* Lista de estórias */
List<Estoria> estorias = [
  Estoria(
    usuario: usuariosOnline[0],
    urlImagem: "https://source.unsplash.com/JMWjOup32Fk/800x600",
    foiVisualizado: true,
  ),
  Estoria(
    usuario: usuariosOnline[1],
    urlImagem: "https://source.unsplash.com/no_TCkPUq_s/800x600",
    foiVisualizado: true,
  ),
  Estoria(
      usuario: usuariosOnline[2],
      urlImagem: "https://source.unsplash.com/6dX5TPPM34M/800x600"
  ),
  Estoria(
      usuario: usuariosOnline[3],
      urlImagem: "https://source.unsplash.com/PO7CGnoDFUI/800x600"
  ),
  Estoria(
      usuario: usuariosOnline[4],
      urlImagem: "https://source.unsplash.com/rewyZqUwAqY/800x600"
  ),
  Estoria(
      usuario: usuariosOnline[5],
      urlImagem: "https://source.unsplash.com/1HpQU1evGK8/800x600"
  ),
  Estoria(
      usuario: usuariosOnline[6],
      urlImagem: "https://source.unsplash.com/W9z_628BBpc/800x600"
  ),
  Estoria(
      usuario: usuariosOnline[7],
      urlImagem: "https://source.unsplash.com/DOb-2jd0sbc/800x600"
  ),
];