import 'package:url_launcher/url_launcher.dart';

void openLink(String url) async {
  Uri uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  } else {
    throw "No se pudo abrir el enlace: $url";
  }
}

void a(int index, List<Map<String, String>> documentos) {
  if (index >= 0 && index < documentos.length) {
    openLink(documentos[index]["link"]!);
  } else {
    throw Exception('Index fuera de rango: $index');
  }
}
