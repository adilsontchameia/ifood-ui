import 'package:flutter/material.dart';

//Coluna de Categorias
class ColumnCategorias extends StatelessWidget {
  final String texto;
  final String imagem;

  const ColumnCategorias({Key key, this.texto, this.imagem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: Image.asset(
            imagem,
            height: 70,
          ),
        ),
        Text(
          texto,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

//Coluna Principal - Banner
class ColumnBanner extends StatelessWidget {
  const ColumnBanner({Key key, this.imagem, this.texto}) : super(key: key);

  final String imagem;
  final String texto;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            imagem,
            height: 140,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(texto),
      ],
    );
  }
}

//Barra de Pesquisa
class BarraPesquisa extends StatelessWidget {
  final String dizer;
  final IconData icone;

  const BarraPesquisa({Key key, this.dizer, this.icone}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.grey.shade100,
        ),
        child: TextField(
          decoration: InputDecoration(
            hintText: dizer,
            border: InputBorder.none,
            prefixIcon: Icon(
              icone,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
