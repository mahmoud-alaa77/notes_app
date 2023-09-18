import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';

import '../constants/constants.dart';
import 'color_item.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(
        width: 16,
      ),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => GestureDetector(
        onTap: (){
          setState(() {
          });
          currentIndex=index;
          BlocProvider.of<AddNoteCubit>(context).color=kColors[index];
        },
        child:  ColorItem(
          isActive: currentIndex== index,
color: kColors[index],
        ),
      ),
      itemCount: kColors.length,
    );
  }
}
