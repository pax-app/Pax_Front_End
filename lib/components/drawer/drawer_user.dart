import 'package:Pax/components/drawer/drawer_head.dart';
import 'package:Pax/services/loggedUser.dart';
import 'package:flutter/material.dart';
import 'package:Pax/components/drawer/drawer_tile.dart';

class DrawerUser extends StatelessWidget {
  final PageController _pageController;
  final LoggedUser loggedUser = LoggedUser();
  DrawerUser(this._pageController);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(
        children: <Widget>[
          Container(color: Theme.of(context).primaryColorLight),
          ListView(
            children: <Widget>[
              DrawerHead("", loggedUser.name, 2.5, _pageController),
              Column(
                children: <Widget>[
                  DrawerTile(
                    Icons.person_outline,
                    "Meu Perfil",
                    _pageController,
                    1,
                  ),
                  DrawerTile(
                    Icons.credit_card,
                    "Meus Cartões",
                    _pageController,
                    2,
                  ),
                  DrawerTile(
                    Icons.chat,
                    "Minhas Conversas",
                    _pageController,
                    3,
                  ),
                  DrawerTile(
                    Icons.library_books,
                    "Historico de Serviços",
                    _pageController,
                    4,
                  ),
                  DrawerTile(
                    this.loggedUser.isProvider
                        ? Icons.swap_horiz
                        : Icons.attach_money,
                    this.loggedUser.isProvider
                        ? "Ir para Prestador"
                        : "Virar Prestador de Serviço",
                    _pageController,
                    5,
                  ),
                  DrawerTile(
                    Icons.build,
                    "Configurações",
                    _pageController,
                    6,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
