import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:four_app/add_card/add_card_controller.dart';
import 'package:get/get.dart';
import 'package:flip_card/flip_card.dart';

class AddCardScreen extends GetWidget<AddCardController> {
  AddCardScreen({Key? key}) : super(key: key);
  static const routeName = "/add_card_screen";
  TextEditingController cardNumber = TextEditingController();
  TextEditingController cardHolder = TextEditingController();
  TextEditingController mmYy = TextEditingController();
  TextEditingController cvv = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: Get.height * 0.2,
              ),
              FlipCard(
                direction: FlipDirection.HORIZONTAL,
                front: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    gradient: const LinearGradient(
                        colors: [
                          Color(0xFF98999B),
                          Color(0xFF035157),
                        ],
                        begin: FractionalOffset(0.0, 0.0),
                        end: FractionalOffset(1.0, 0.0),
                        stops: [0.0, 1.0]),
                  ),
                  height: Get.height * 0.3,
                  width: Get.width * 0.95,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextFormField(
                        enabled: false,
                        controller: cardNumber,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          CardNumberFormatter(),
                        ],
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Image.network(
                              'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Mastercard-logo.svg/800px-Mastercard-logo.svg.png',
                              alignment: Alignment.topRight,
                              height: 60,
                              width: 50,
                            ),
                          ),
                          hintText: 'XXXX XXXX XXXX XXXX',
                          labelText: 'Card Number',
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                        ),
                        maxLength: 19,
                        onChanged: (value) {},
                      ),
                      const SizedBox(height: 0.1),
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.bottomLeft,
                            height: 90,
                            width: 250,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                enabled: false,
                                controller: cardHolder,
                                textInputAction: TextInputAction.done,
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                  hintText: 'CARDHOLDER NAME',
                                  labelText: 'Card Holder',
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                ),
                                onChanged: (value) {},
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.bottomLeft,
                            height: 90,
                            width: 100,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                enabled: false,
                                controller: mmYy,
                                textInputAction: TextInputAction.done,
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                  labelText: 'mm/yy',
                                  labelStyle: TextStyle(height: 1),
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                ),
                                onChanged: (value) {},
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                back: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    gradient: const LinearGradient(
                        colors: [
                          Color(0xFF98999B),
                          Color(0xFF035157),
                        ],
                        begin: FractionalOffset(0.0, 0.0),
                        end: FractionalOffset(1.0, 0.0),
                        stops: [0.0, 1.0]),
                  ),
                  height: Get.height * 0.3,
                  width: Get.width * 0.95,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        width: Get.width * 0.99,
                        color: Colors.black87,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 40,
                                width: Get.height * .50,
                                color: Colors.white60,
                                child: TextFormField(
                                  textAlign: TextAlign.end,
                                  controller: cvv,
                                  textInputAction: TextInputAction.done,
                                  keyboardType: TextInputType.name,
                                  decoration: const InputDecoration(
                                    border: const OutlineInputBorder(),
                                  ),
                                  onChanged: (value) {},
                                ),
                              ),
                              Container(
                                height: 40,
                                width: Get.height * .35,
                                color: Color.fromARGB(255, 82, 81, 81),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: cardNumber,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  CardNumberFormatter(),
                ],
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Mastercard-logo.svg/800px-Mastercard-logo.svg.png',
                      height: 30,
                      width: 30,
                    ),
                  ),
                  border: const OutlineInputBorder(),
                  hintText: 'XXXX XXXX XXXX XXXX',
                  labelText: 'Card Number',
                ),
                maxLength: 19,
                onChanged: (value) {},
              ),
              SizedBox(
                height: Get.height * 0.002,
              ),
              TextFormField(
                controller: cardHolder,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: 'CARDHOLDER NAME',
                  labelText: 'Card Holder',
                ),
                maxLength: 19,
                onChanged: (value) {},
              ),
              TextFormField(
                controller: mmYy,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: 'ExpiryDate',
                  labelText: 'MM/YY',
                ),
                maxLength: 19,
                onChanged: (value) {},
              ),
              TextFormField(
                controller: cvv,
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: 'card verification code',
                  labelText: 'CVV',
                ),
                onChanged: (value) {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue previousValue,
    TextEditingValue nextValue,
  ) {
    var inputText = nextValue.text;

    if (nextValue.selection.baseOffset == 0) {
      return nextValue;
    }

    var bufferString = new StringBuffer();
    for (int i = 0; i < inputText.length; i++) {
      bufferString.write(inputText[i]);
      var nonZeroIndexValue = i + 1;
      if (nonZeroIndexValue % 4 == 0 && nonZeroIndexValue != inputText.length) {
        bufferString.write(' ');
      }
    }

    var string = bufferString.toString();
    return nextValue.copyWith(
      text: string,
      selection: new TextSelection.collapsed(
        offset: string.length,
      ),
    );
  }
}
