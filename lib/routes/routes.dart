import 'package:get/get.dart';
import 'package:zenly/pages/Login.dart';
import 'package:zenly/pages/Login.dart';

class RouteClass {
  static String home = "/";
  static String getHomeRoute() => home;
  List<GetPage> routes = [GetPage(page: () => const Login(), name: home)];
}
