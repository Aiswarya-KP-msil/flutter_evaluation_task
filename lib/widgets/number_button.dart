import 'package:flutter/material.dart';
import 'package:mpin_screen_evaluation_task/provider/mpin_provider.dart';
import 'package:provider/provider.dart';
class NumberButton extends StatelessWidget {
  final int number;
  final double size;


  NumberButton({
    required this.number,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MpinProvider>(context);
    return SizedBox(
      width: size,
      height: size,
      child: TextButton(
        onPressed: () {
          provider.incrementCounter();
        },
        child: Center(
          child: Text(
            number.toString(),
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.greenAccent, fontSize: 30),
          ),
        ),
      ),
    );
  }
}