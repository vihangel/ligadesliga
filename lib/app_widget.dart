import 'package:bot_toast/bot_toast.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/src/presenters/modular_base.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppWidget extends StatelessWidget {
  final botToastBuilder = BotToastInit();
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(411.4, 683.4),
        builder: () => MaterialApp(
              locale: DevicePreview.locale(context),
              builder: (context, child) {
                child = DevicePreview.appBuilder(context, child);
                child = botToastBuilder(context, child);
                return child;
              },
              debugShowCheckedModeBanner: false,
              title: 'Ar Liga Desliga',
              theme: ThemeData(
                  fontFamily: 'OpenSans',
                  primarySwatch: Colors.green,
                  canvasColor: Colors.transparent),
              initialRoute: '/',
            ).modular());
  }
}
