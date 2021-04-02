import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'app_widget.dart';
import 'modules/home/home_module.dart';
import 'modules/splash/splash_module.dart';
import 'shared/api/api_client_factory.dart';

class AppModule extends MainModule {
  List<Bind> get binds => [
        Bind((i) => ApiClientFactory.create()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, module: SplashModule()),
        ModularRouter("/home", module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
