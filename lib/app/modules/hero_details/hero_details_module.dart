import 'package:flutter_modular/flutter_modular.dart';
import 'package:superherapp/app/modules/hero_details/hero_details_page.dart';

class HeroDetailsModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(
          Modular.initialRoute,
          child: (_, args) => HeroDetailsPage(
            data: args.data,
          ),
        ),
      ];

  static Inject get to => Inject<HeroDetailsModule>.of();
}
