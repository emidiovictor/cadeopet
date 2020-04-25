import 'package:cadeocao/app/modules/encontrei/encontrei_module.dart';
import 'package:cadeocao/app/modules/feed/feed_module.dart';
import 'package:cadeocao/app/modules/my_account/my_account_module.dart';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'base_controller.dart';

class BasePage extends StatefulWidget {
  final String title;
  const BasePage({Key key, this.title = "Base"}) : super(key: key);

  @override
  _BasePageState createState() => _BasePageState();
}

class _BasePageState extends ModularState<BasePage, BaseController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(builder: (_) {
        return SafeArea(
          child: IndexedStack(
            index: controller.selectedPage,
            children: <Widget>[
              RouterOutlet(
                module: FeedModule(),
              ),
              RouterOutlet(
                module: MyAccountModule(),
              ),
              RouterOutlet(
                module: EncontreiModule(),
              ),
            ],
          ),
        );
      }),
      bottomNavigationBar: Observer(builder: (_) {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: controller.setSelectedPage,
          currentIndex: controller.selectedPage,
          items: [
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.wifi), title: Text("Feed")),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), title: Text("Minha Conta")),
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.qrcode),
                title: Text("Encontrei")),
            BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.dog), title: Text("Pets")),
          ],
        );
      }),
    );
  }
}
