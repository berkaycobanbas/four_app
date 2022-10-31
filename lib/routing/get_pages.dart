import 'package:four_app/home/home_screen.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>> getPages = [
  GetPage(name: HomeScreen.routeName, page: () => HomeScreen()),
];
