import 'package:flutter/material.dart';

import '../theme.dart';
class MyButton extends StatelessWidget {
  MyButton({
    Key? key,
    //required this.iconData,
    required this.buttonText,
    this.width = 130,
    this.height = 50,
    this.onTap,
  }) : super(key: key);

  //final IconData iconData;
  final String buttonText;
  final Function()? onTap;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        elevation: 8.0,
        borderRadius: BorderRadius.circular(20.0),
        child: InkWell(
          onTap: onTap,
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0), color: primaryColor),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    buttonText,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        color: tertiaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
