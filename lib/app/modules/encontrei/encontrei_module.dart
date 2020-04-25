import 'package:cadeocao/app/modules/encontrei/encontrei_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:cadeocao/app/modules/encontrei/encontrei_page.dart';

class EncontreiModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => EncontreiController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => EncontreiPage()),
      ];

  static Inject get to => Inject<EncontreiModule>.of();
}
