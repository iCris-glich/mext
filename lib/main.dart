import 'package:beca_mext/page_web/router/go_router.dart';
import 'package:beca_mext/page_web/screen/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(BecaMext());
}

class BecaMext extends StatefulWidget {
  const BecaMext({super.key});

  @override
  State<BecaMext> createState() => _BecaMextState();
}

class _BecaMextState extends State<BecaMext> {
  Locale local = const Locale("es");

  void cambiarIdioma(Locale locale) {
    setState(() {
      local = locale;
    });
  }

  late final GoRouter goRouter = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => HomePage(cambiarIdioma: cambiarIdioma),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      locale: local,
      supportedLocales: const [Locale("es"), Locale("ja")],
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      debugShowCheckedModeBanner: false,
      title: "Beca Mext",

      routerConfig: goRouter,
    );
  }
}
