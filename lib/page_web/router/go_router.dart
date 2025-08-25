import 'package:beca_mext/page_web/screen/home_page.dart';
import 'package:go_router/go_router.dart';

final goRouter = GoRouter(
  routes: [GoRoute(path: "/", builder: (context, state) => HomePage())],
);
