import 'package:flutter/material.dart';
import 'package:mpin_screen_evaluation_task/provider/mpin_provider.dart';
import 'package:provider/provider.dart';

import 'number_button.dart';

class NumPad extends StatelessWidget {
  final double buttonSize;
  final Color iconColor;

  NumPad({
    this.buttonSize = 70,
    this.iconColor = Colors.greenAccent,
  });

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MpinProvider>(context);
    return Container(
      margin: const EdgeInsets.only(left: 8, right: 8),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NumberButton(
                number: 1,
                size: buttonSize,
              ),
              NumberButton(
                number: 2,
                size: buttonSize,
              ),
              NumberButton(
                number: 3,
                size: buttonSize,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NumberButton(
                number: 4,
                size: buttonSize,
              ),
              NumberButton(
                number: 5,
                size: buttonSize,
              ),
              NumberButton(
                number: 6,
                size: buttonSize,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NumberButton(
                number: 7,
                size: buttonSize,
              ),
              NumberButton(
                number: 8,
                size: buttonSize,
              ),
              NumberButton(
                number: 9,
                size: buttonSize,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // this button is used to delete the last number
              IconButton(
                onPressed: () {
                  provider.decrementCounter();
                },
                icon: Icon(
                  Icons.backspace,
                  color: iconColor,
                ),
                iconSize: 30,
              ),
              NumberButton(
                number: 0,
                size: buttonSize,
              ),
              // this button is used to submit the entered value
              IconButton(
                onPressed: () {
                },
                icon: Icon(
                  Icons.done_rounded,
                  color: iconColor,
                ),
                iconSize: 30,
              ),
            ],
          ),
        ],
      ),
    );
  }
}