import 'package:beca_mext/page_web/router/go_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BecaMext());
}

class BecaMext extends StatelessWidget {
  const BecaMext({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: "Beca Mext",
      routerConfig: goRouter,
    );
  }
}
