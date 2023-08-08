import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        borderRadius:  BorderRadiusDirectional.circular(15),
        color: Colors.grey.withOpacity(.2),
      ),
      child: IconButton(
        onPressed: (){},
        icon: Icon(Icons.search),
      ),
    );
  }
}
