import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorView extends StatefulWidget {
  const CalculatorView({super.key});

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  num x = 0;
  num y = 0;
  num z = 0;

  final firstNumberController = TextEditingController();
  final secondNumberController = TextEditingController();

  @override
  void initState() {
    super.initState();

    firstNumberController.text = x.toString();
    secondNumberController.text = y.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        children: [
          InputField(
              key: const Key("InputField1"),
              hint: "Enter First Number",
              controller: firstNumberController),
          const SizedBox(height: 30),
          InputField(
              key: const Key("InputField2"),
              hint: "Enter Second Number",
              controller: secondNumberController),
          const SizedBox(height: 30),
          Text(
            key: const Key("Result"),
            z.toString(),
            style: const TextStyle(
              fontSize: 60,
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      z = num.tryParse(firstNumberController.text.toString())! +
                          num.tryParse(secondNumberController.text.toString())!;
                    });
                  },
                  child: const Icon(CupertinoIcons.add)),
              FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      z = num.tryParse(firstNumberController.text.toString())! -
                          num.tryParse(secondNumberController.text.toString())!;
                    });
                  },
                  child: const Icon(CupertinoIcons.minus)),
              FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      z = num.tryParse(firstNumberController.text.toString())! *
                          num.tryParse(secondNumberController.text.toString())!;
                    });
                  },
                  child: const Icon(CupertinoIcons.multiply)),
              FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      z = num.tryParse(firstNumberController.text.toString())! /
                          num.tryParse(secondNumberController.text.toString())!;
                    });
                  },
                  child: const Icon(CupertinoIcons.divide)),
            ],
          ),
          const SizedBox(height: 10),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            FloatingActionButton(
                onPressed: () {
                  setState(() {
                    x = 0;
                    y = 0;
                    z = 0;
                    firstNumberController.clear();
                    secondNumberController.clear();
                  });
                },
                child: const Text(
                  "Clear",
                )),
          ])
        ],
      ),
    );
  }
}

class InputField extends StatelessWidget {
  const InputField(
      {super.key, this.hint = "Enter a Number", required this.controller});

  final String? hint;

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      autofocus: true,
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(10)),
          border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(10)),
          hintText: hint,
          hintStyle: const TextStyle(color: Colors.white)),
    );
  }
}
