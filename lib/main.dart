import 'package:beca_mext/page_web/router/go_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BecaMext());
}

class BecaMext extends StatefulWidget {
  const BecaMext({super.key});

  @override
  State<BecaMext> createState() => _BecaMextState();
}

class _BecaMextState extends State<BecaMext> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: "Beca Mext",

      routerConfig: goRouter,
    );
  }
}
