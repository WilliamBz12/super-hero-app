import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'cubits/heros/heros_cubit.dart';
import 'repositories/hero_repository.dart';
import 'pages/home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HeroRepository(client: i.get<Dio>())),
        Bind((i) => HerosCubit(i.get<HeroRepository>())),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(
          Modular.initialRoute,
          child: (_, args) => HomePage(),
        ),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
