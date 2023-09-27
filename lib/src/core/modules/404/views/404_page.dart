import 'package:flutter/material.dart';
import 'package:launcher_app/src/config/constants/colors.dart';
import 'package:launcher_app/src/config/constants/size.dart';

class Page404 extends StatelessWidget {
  final String errorMessage;

  const Page404({ required this.errorMessage})
      : assert(errorMessage != null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          errorMessage,
          style: TextStyle(color: dangerColor, fontSize: normalTextSize),
        ),
      ),
    );
  }
}
