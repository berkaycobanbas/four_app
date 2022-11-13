import 'package:flutter/material.dart';
import 'package:four_app/add_card/add_card_screen.dart';
import 'package:four_app/routing/get_controller.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // controller'ları tanıtıyoruz
  await getControllers();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: AddCardScreen(),
    );
  }
}
