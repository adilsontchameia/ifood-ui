import 'package:flutter/material.dart';

import 'BottomNavigation.dart';
import 'Widgets.dart';

void main() {
  runApp(IfoodFlutter());
}

class IfoodFlutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.grey),
      title: "Ifood Flutter",
      home: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "ENTREGA EM",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w700,
                        fontSize: 16),
                  ),
                  Row(
                    children: [
                      Text(
                        "Aero Via",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.red,
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                children: [
                  BarraPesquisa(
                    icone: Icons.search,
                    dizer: 'Pesquisar...',
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Filtros",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Container(
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
                //RESTAURANTES
                child: ListView(
                  padding: EdgeInsets.only(right: 12),
                  scrollDirection: Axis.horizontal,
                  children: [
                    ColumnBanner(
                      imagem: 'imagens/restaurantes-0.png',
                      texto: "Aberto 24h / 24h",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ColumnBanner(
                      imagem: 'imagens/restaurantes-1.png',
                      texto: "Entrega Gratis 24/24",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ColumnBanner(
                      imagem: 'imagens/restaurantes-2.png',
                      texto: "Entrega Gratis",
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 10,
              color: Colors.grey.shade100,
            ),
            Container(
              height: 150,
              padding: EdgeInsets.only(top: 12, left: 12),
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Categorias",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  //CATEGORIAS
                  Expanded(
                      child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ColumnCategorias(
                        imagem: 'imagens/pizza.png',
                        texto: 'Pizza',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ColumnCategorias(
                        imagem: 'imagens/lanches.png',
                        texto: 'Lanches',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ColumnCategorias(
                        imagem: 'imagens/japonesa.png',
                        texto: 'Japonesa',
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ColumnCategorias(
                        imagem: 'imagens/gourmet.png',
                        texto: 'Gourmet',
                      ),
                    ],
                  )),
                ],
              ),
            ),
            Container(
              height: 10,
              color: Colors.grey.shade100,
            ),
            //BANNER DE BAIXO
            Container(
              padding: EdgeInsets.all(12),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset("imagens/gourmet.png"),
              ),
            ),
          ],
        ),
        //BOTTOM NAVIGATION
        bottomNavigationBar: BottomNavigationBar(
          elevation: 4,
          items: [
            buildBottomNavigationBarItem(Icons.home, 'Inicio'),
            buildBottomNavigationBarItem(Icons.search, 'Buscas'),
            buildBottomNavigationBarItem(Icons.receipt, 'Pedidos'),
            buildBottomNavigationBarItem(Icons.person_outline, 'Perfil'),
          ],
        ),
      ),
    );
  }
}
