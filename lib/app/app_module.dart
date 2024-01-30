import 'package:flutter_modular/flutter_modular.dart';
import 'package:test_handcom_app/app/modules/home/home_module.dart';
import 'package:test_handcom_app/app/modules/splash/splash_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/', module: SplashModule()),
    ModuleRoute('/home/', module: HomeModule()),
  ];
}
