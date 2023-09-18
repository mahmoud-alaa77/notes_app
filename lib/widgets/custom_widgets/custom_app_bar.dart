import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon, this.onPressed});
 final String title;
  final IconData icon;
  final void Function()? onPressed ;

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,style: TextStyle(
            fontSize: 27,
            fontWeight: FontWeight.normal,
          ),
          ),
          CustomIcon(
            onPressed: onPressed,
            icon: icon,
          ),
        ],
      ),
    );
  }
}
