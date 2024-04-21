import 'package:bmi_calculator/body_model.dart';
import 'package:bmi_calculator/palette.dart';
import 'package:bmi_calculator/result/result_body_widget.dart';
import 'package:flutter/material.dart';

import '../bmi_calculator.dart';

class ResultPage extends StatelessWidget {
  final BodyModel model;

  const ResultPage({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    final result = calculateBMI(bodyModel: model);

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        centerTitle: true,
        title: const Text(
          'RESULT',
          style: TextStyle(color: Palette.textColor),
        ),
        backgroundColor: Palette.background,
        leading: IconButton(
          onPressed: () {
            // Navigate back to previous page
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: ResultBodyWidget(result: result),
    );
  }
}
