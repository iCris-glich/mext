import 'package:beca_mext/page_web/fuction/screen_size.dart';
import 'package:beca_mext/page_web/screen/disen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final void Function(Locale locale) cambiarIdioma;

  const HomePage({super.key, required this.cambiarIdioma});

  @override
  Widget build(BuildContext context) {
    final screen = ScreenSize(context);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Embajada del Japón en Guatemala \n 在グアテマラ日本国大使館',
          style: TextStyle(
            color: const Color.fromARGB(255, 30, 62, 88),
            fontWeight: FontWeight.bold,
          ),
        ),

        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                "https://static.vecteezy.com/system/resources/previews/015/414/387/non_2x/world-map-isolated-on-white-background-flat-earth-map-template-for-web-site-pattern-anual-report-inphographics-worldmap-icon-travel-worldwide-map-silhouette-vector.jpg",
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: screen.width() > 700
              ? EdgeInsets.only(left: 200, right: 200, top: 10)
              : EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                barra(context),
                const SizedBox(height: 15),
                texto(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
