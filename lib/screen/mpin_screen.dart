import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mpin_screen_evaluation_task/appcontants/appContants.dart';
import 'package:mpin_screen_evaluation_task/provider/mpin_provider.dart';
import 'package:provider/provider.dart';

import '../widgets/number_pad.dart';
import '../widgets/output_circle_widget.dart';

class MpinScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: MpinProvider(),
      child: SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 100),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(AppConstants().logo),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20,bottom: 20),
                  child: Text(AppConstants().title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          AppConstants().email,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold)
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                          AppConstants().logOut,
                          style: const TextStyle(
                            color: Colors.greenAccent,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ),
                OutputCircleWidget(),
                Container(
                  margin: EdgeInsets.only(top: 50,bottom: 10),
                  child: Text(
                      AppConstants().useTouchId,
                      style: const TextStyle(
                        color: Colors.greenAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                      ),
                  ),
                ),
                NumPad()
              ],
            ),
          ),
        ),
      ),
    );
  }

}