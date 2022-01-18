import 'package:flutter_modular/flutter_modular.dart';
import 'package:ligadesliga/app_controller.dart';

import 'modules/home_page.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => AppController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => HomePage()),
  ];
}
