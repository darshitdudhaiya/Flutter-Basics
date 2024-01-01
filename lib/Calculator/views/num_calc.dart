import 'package:demo/common/button_widget.dart';
import 'package:demo/common/icon_button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:vibration/vibration.dart';

class NumCalc extends StatefulWidget {
  const NumCalc({super.key});

  @override
  State<NumCalc> createState() => _NumCalcState();
}

class _NumCalcState extends State<NumCalc> {
  late TextEditingController textEditingController;

  @override
  void initState() {
    super.initState();

    textEditingController = TextEditingController();
  }

  void appendInTextEditingController(String value) {
    final currentValue = textEditingController.text;
    final newValue = '$currentValue$value';

    textEditingController.text = newValue;
  }

  void clearClearTextEditingController() {
    textEditingController.text = "";
  }

  int evaluateExpression(String expression) {
    Parser p = Parser();
    Expression exp = p.parse(expression);
    ContextModel cm = ContextModel();
    double result = exp.evaluate(EvaluationType.REAL, cm);
    return result.toInt();
  }

  void backspaceExpression() {
    if (textEditingController.text.isNotEmpty) {
      textEditingController.text = textEditingController.text
          .substring(0, textEditingController.text.length - 1);
    }
  }

  String getLastSymbol(TextEditingController controller) {
    final text = controller.text;
    if (text.isNotEmpty) {
      return text.substring(text.length - 1);
    }
    return '';
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          TextField(
            controller: textEditingController,
            textAlign: TextAlign.right,
            showCursor: true,
            readOnly: true,
            autofocus: true,
            keyboardType: TextInputType.number,
            cursorColor: Colors.white,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 40,
            ),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(10.0)),
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(10.0)),
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButtonWidget(
                  icon:
                      const Icon(CupertinoIcons.chevron_left_square, size: 30),
                  iconColor: Colors.green,
                  onpressed: () {
                    Vibration.vibrate(duration: 100);
                    backspaceExpression();
                  })
            ],
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ButtonWidget(
                text: "C",
                textColor: Colors.red,
                onpressed: () {
                  Vibration.vibrate(duration: 100);
                  clearClearTextEditingController();
                },
              ),
              ButtonWidget(
                text: "( )",
                textColor: Colors.green,
                onpressed: () {
                  Vibration.vibrate(duration: 100);
                  appendInTextEditingController("()");
                },
              ),
              IconButtonWidget(
                icon: const Icon(CupertinoIcons.percent, size: 30),
                iconColor: Colors.green,
                onpressed: () {
                  Vibration.vibrate(duration: 100);
                  appendInTextEditingController("%");
                },
              ),
              IconButtonWidget(
                icon: const Icon(CupertinoIcons.divide, size: 30),
                iconColor: Colors.green,
                onpressed: () {
                  Vibration.vibrate(duration: 100);
                  appendInTextEditingController("/");
                },
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ButtonWidget(
                text: "7",
                textColor: Colors.white,
                onpressed: () {
                  Vibration.vibrate(duration: 100);
                  appendInTextEditingController("7");
                },
              ),
              ButtonWidget(
                text: "8",
                textColor: Colors.white,
                onpressed: () {
                  Vibration.vibrate(duration: 100);
                  appendInTextEditingController("8");
                },
              ),
              ButtonWidget(
                text: "9",
                textColor: Colors.white,
                onpressed: () {
                  Vibration.vibrate(duration: 100);
                  appendInTextEditingController("9");
                },
              ),
              IconButtonWidget(
                icon: const Icon(CupertinoIcons.multiply, size: 30),
                iconColor: Colors.green,
                onpressed: () {
                  Vibration.vibrate(duration: 100);
                  appendInTextEditingController("*");
                },
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ButtonWidget(
                text: "4",
                textColor: Colors.white,
                onpressed: () {
                  Vibration.vibrate(duration: 100);
                  appendInTextEditingController("4");
                },
              ),
              ButtonWidget(
                text: "5",
                textColor: Colors.white,
                onpressed: () {
                  Vibration.vibrate(duration: 100);
                  appendInTextEditingController("5");
                },
              ),
              ButtonWidget(
                text: "6",
                textColor: Colors.white,
                onpressed: () {
                  Vibration.vibrate(duration: 100);
                  appendInTextEditingController("6");
                },
              ),
              IconButtonWidget(
                icon: const Icon(CupertinoIcons.minus, size: 30),
                iconColor: Colors.green,
                onpressed: () {
                  Vibration.vibrate(duration: 100);
                  appendInTextEditingController("-");
                },
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ButtonWidget(
                text: "1",
                textColor: Colors.white,
                onpressed: () {
                  Vibration.vibrate(duration: 100);
                  appendInTextEditingController("1");
                },
              ),
              ButtonWidget(
                text: "2",
                textColor: Colors.white,
                onpressed: () {
                  Vibration.vibrate(duration: 100);
                  appendInTextEditingController("2");
                },
              ),
              ButtonWidget(
                text: "3",
                textColor: Colors.white,
                onpressed: () {
                  Vibration.vibrate(duration: 100);
                  appendInTextEditingController("3");
                },
              ),
              IconButtonWidget(
                icon: const Icon(CupertinoIcons.plus, size: 30),
                iconColor: Colors.green,
                onpressed: () {
                  Vibration.vibrate(duration: 100);
                  appendInTextEditingController("+");
                },
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ButtonWidget(
                text: "+/-",
                textColor: Colors.white,
                onpressed: () {
                  Vibration.vibrate(duration: 100);
                  appendInTextEditingController(
                    "+/-",
                  );
                },
              ),
              ButtonWidget(
                text: "0",
                textColor: Colors.white,
                onpressed: () {
                  Vibration.vibrate(duration: 100);
                  appendInTextEditingController("0");
                },
              ),
              ButtonWidget(
                text: ".",
                textColor: Colors.white,
                onpressed: () {
                  Vibration.vibrate(duration: 100);
                  appendInTextEditingController(".");
                },
              ),
              IconButtonWidget(
                icon: const Icon(CupertinoIcons.equal, size: 30),
                iconColor: Colors.white,
                backgroundColor: Colors.green,
                onpressed: () {
                  Vibration.vibrate(duration: 100);
                  if (textEditingController.text.isNotEmpty &&
                      getLastSymbol(textEditingController) != "+" &&
                      getLastSymbol(textEditingController) != "()" &&
                      getLastSymbol(textEditingController) != "%" &&
                      getLastSymbol(textEditingController) != "/" &&
                      getLastSymbol(textEditingController) != "*" &&
                      getLastSymbol(textEditingController) != "-") {
                    textEditingController.text =
                        evaluateExpression(textEditingController.text)
                            .toString();
                  }
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
