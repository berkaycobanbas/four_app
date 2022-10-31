import 'package:flutter/services.dart';
import 'package:four_app/home/home_controller.dart';
import 'package:get/get.dart';

//parametre isterse Get.find()
Future getControllers() async {
  // Async dependencies that have to be added
  final List<Future> asyncGenerators = [];
  // Async methods that have to be run before the app starts
  final List<Future> lateInitializers = [];

  //Controllers
  Get.create(() => HomeController(), permanent: false);

  lateInitializers.add(
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]),
  );

  return Future.wait(lateInitializers) //
      .then((_) => Future.wait(asyncGenerators));
}
