import 'package:flutter/material.dart';

import '../constants/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(8),
        color: kPrimary,
      ),
      child: Center(
        child: Text(
          "Add",style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Colors.black
        ),
        ),
      ),
    );
  }
}

