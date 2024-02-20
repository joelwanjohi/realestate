
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class SearchField extends StatefulWidget {
//   const SearchField({super.key});

//   @override
//   State<SearchField> createState() => _SearchFieldState();
// }

// class _SearchFieldState extends State<SearchField> {
//   @override
//   Widget build(BuildContext context) {
//     return const TextField(
//       decoration: InputDecoration(
//         border: InputBorder.none,
//         filled: true,
//         fillColor: Color(0xFF8FAFC),
//         hintText: "Search...",
//         prefixIcon: Icon(CupertinoIcons.search),
//         suffixIcon: Icon(Icons.filter_list_alt)
//       ),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchField extends StatefulWidget {
  const SearchField({super.key});

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: const TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Search...",
          prefixIcon: Icon(CupertinoIcons.search, color: Colors.black),
          suffixIcon: Icon(Icons.filter_list_outlined, color: Colors.black),
        ),
      ),
    );
  }
}
