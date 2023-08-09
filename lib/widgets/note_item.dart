import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.only(
        top: 20,
        bottom: 20,
        start: 16,
      ),
      margin: EdgeInsetsDirectional.symmetric(vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(16),
        color: const Color(0xffFFCD7A),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              "Flutter tips",style: TextStyle(
                color: Colors.black,
                fontSize: 28,
              fontWeight: FontWeight.bold
            ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                "Build your career with tharwat samy",style: TextStyle(
                color: Colors.black.withOpacity(.4),
                fontSize: 22,

              ),
              ),
            ),
            trailing: IconButton(
              onPressed: (){},
              icon: const Icon(Icons.delete,color: Colors.black,
              size: 32,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(end: 24,top: 16),
            child: Text(
              "May 21,2022",style: TextStyle(
              color: Colors.black.withOpacity(.4),
              fontSize: 16,

            ),
            ),
          ),
        ],
      )
    );
  }
}
