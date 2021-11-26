import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/constants/theme.dart';
import 'core/utils/router_observer.dart';

class AppWidget extends StatelessWidget {
  final RouterObserver routerObserver;

  const AppWidget({
    Key? key,
    required this.routerObserver,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () {
        return MaterialApp(
          navigatorObservers: [
            routerObserver,
          ],
          title: 'Digistart',
          theme: LightTheme.theme,
          themeMode: ThemeMode.light,
          // debugShowMaterialGrid: true,
          debugShowCheckedModeBanner: false,
          supportedLocales: const [Locale('pt', 'BR')],
          localizationsDelegates: const [
            GlobalCupertinoLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          locale: const Locale('pt', 'BR'),
          initialRoute: Modular.initialRoute,
          builder: (context, widget) {
            return MediaQuery(
              //Setting font does not change with system font size
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              child: widget!,
            );
          },
        ).modular();
      },
    );
  }
}
