import 'package:four_app/add_card/add_card_screen.dart';
import 'package:four_app/home/home_screen.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>> getPages = [
  GetPage(name: HomeScreen.routeName, page: () => HomeScreen()),
  GetPage(name: AddCardScreen.routeName, page: () => AddCardScreen()),
];
