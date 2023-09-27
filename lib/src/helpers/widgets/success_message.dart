import 'package:flutter/material.dart';
import 'package:launcher_app/src/config/constants/colors.dart';

import 'package:launcher_app/src/helpers/widgets/custom_snackbar.dart';

class SuccessMessage extends CustomSnackBar {
  final BuildContext context;
  final String error;
  //  int days;
  //  int seconds=2;
  final Function()? fn;

// create constructor for SuccessMessage class
  SuccessMessage({
    required this.context,
    required this.error,
    this.fn,
    // this.days,
    // this.seconds,
  }) :super(
            context: context,
            message: error,
            // days: days,
            seconds: 2,
            color: dangerColor,
            );
}
