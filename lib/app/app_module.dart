import 'package:cadeocao/app/app_controller.dart';
import 'package:cadeocao/app/modules/base/base_module.dart';
import 'package:cadeocao/app/modules/feed/widget/publicacao/criar_publicao.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:cadeocao/app/app_widget.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: BaseModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
