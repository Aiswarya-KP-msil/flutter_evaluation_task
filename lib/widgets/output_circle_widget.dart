import 'package:flutter/material.dart';
import 'package:mpin_screen_evaluation_task/provider/mpin_provider.dart';
import 'package:provider/provider.dart';

class OutputCircleWidget extends StatelessWidget{
 // late final int count;
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MpinProvider>(context);
    final count = provider.getCount;
    return ChangeNotifierProvider.value(
      value: MpinProvider(),
      child: Row(
       crossAxisAlignment: CrossAxisAlignment.center,
       mainAxisAlignment: MainAxisAlignment.center,

       children: [
         Container(
           height: 20,
           width: 20,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(12),
             border:count>= 1?Border.all(color: Colors.greenAccent) :Border.all(color: Colors.black54),
             color: count >= 1 ? Colors.greenAccent : Colors.white
           ),
         ),
         const SizedBox(
           width: 30,
         ),
         Container(
           height: 20,
           width: 20,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(12),
               border:count>= 2?Border.all(color: Colors.greenAccent) :Border.all(color: Colors.black54),
               color: count >= 2 ? Colors.greenAccent : Colors.white
           ),
         ),
         const SizedBox(
           width: 30,
         ),
         Container(
           height: 20,
           width: 20,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(12),
               border:count>= 3?Border.all(color: Colors.greenAccent) :Border.all(color: Colors.black54),
               color: count >= 3 ? Colors.greenAccent : Colors.white
           ),
         ),
         const SizedBox(
           width: 30,
         ),
         Container(
           height: 20,
           width: 20,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(12),
               border:count>= 4?Border.all(color: Colors.greenAccent) :Border.all(color: Colors.black54),
               color: count >= 4 ? Colors.greenAccent : Colors.white
           ),
         ),

       ],
      ),
    );
  }
}
