import 'package:cadeocao/app/modules/my_account/my_account_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:cadeocao/app/modules/my_account/my_account_page.dart';

class MyAccountModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => MyAccountController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => MyAccountPage()),
      ];

  static Inject get to => Inject<MyAccountModule>.of();
}
