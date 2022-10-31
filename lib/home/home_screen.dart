import 'package:flutter/material.dart';
import 'package:four_app/home/home_controller.dart';
import 'package:get/get.dart';

class HomeScreen extends GetWidget<HomeController> {
  HomeScreen({Key? key}) : super(key: key);
  static const routeName = "/home_screen";
  double? boy;
  double? kilo;
  double? indeks;

  _indeks() {
    boy = double.parse(controller.boyController.text);
    kilo = double.parse(controller.kiloController.text);
    indeks = kilo! / (boy! * boy!);
  }

  addList() {
    controller.PastValues.add(indeks.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              Container(
                height: 50,
                width: 180,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    cursorColor: Colors.amber,
                    cursorHeight: 30,
                    textAlign: TextAlign.center,
                    controller: controller.boyController,
                    decoration: const InputDecoration(
                        hintText: "Boy Giriniz", border: InputBorder.none),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 180,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    cursorColor: Colors.amber,
                    cursorHeight: 30,
                    textAlign: TextAlign.center,
                    controller: controller.kiloController,
                    decoration: const InputDecoration(
                        hintText: "Kilo Giriniz", border: InputBorder.none),
                  ),
                ),
              ),
            ]),
            SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                _indeks();
                addList();
                print(indeks);
              },
              child: Container(
                child: Center(child: Text("İndeks Hesapla")),
                height: 50,
                width: 180,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Center(
                child: Text(
                  "$indeks",
                  textAlign: TextAlign.center,
                ),
              ),
              height: 50,
              width: 180,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black)),
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: controller.PastValues.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: ListTile(
                      title: Text(controller.PastValues[index]),
                    ),
                  );
                }),
          ],
        )),
      ),
    );
  }
}
