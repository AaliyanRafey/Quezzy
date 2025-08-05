// import 'package:flutter/material.dart';

// class SelectableWordsField extends StatefulWidget {
//   @override
//   _SelectableWordsFieldState createState() => _SelectableWordsFieldState();
// }

// class _SelectableWordsFieldState extends State<SelectableWordsField> {
//   final List<String> words = ["Apple", "Banana", "Cherry", "Date", "Elder"];
//   List<String> selectedWords = [];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Center(
//         child: Column(
//           children: [
//             SizedBox(height: 50),

//             // Top field
//             Container(
//               height: 60,
//               width: 360,
//               padding: EdgeInsets.symmetric(horizontal: 16),
//               alignment: Alignment.centerLeft,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 border: Border.all(color: Colors.grey.shade300, width: 2),
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: Text(
//                 selectedWords.join(" "),
//                 style: TextStyle(
//                   fontFamily: 'RubikReg',
//                   fontWeight: FontWeight.w900,
//                   fontSize: 16,
//                 ),
//               ),
//             ),

//             SizedBox(height: 3),

//             // First row (3 items)
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: List.generate(3, (index) => buildOption(words[index])),
//             ),

//             SizedBox(height: 3),

//             // Second row (2 items)
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: List.generate(
//                 2,
//                 (index) => buildOption(words[index + 3]),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget buildOption(String word) {
//     bool isSelected = selectedWords.contains(word);
//     int selectionIndex = selectedWords.indexOf(word) + 1;

//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           if (isSelected) {
//             selectedWords.remove(word);
//           } else {
//             selectedWords.add(word);
//           }
//         });
//       },
//       child: Stack(
//         alignment: Alignment.topRight,
//         children: [
//           Container(
//             margin: EdgeInsets.symmetric(horizontal: 8),
//             height: 60,
//             width: 162,
//             alignment: Alignment.center,
//             decoration: BoxDecoration(
//               color: isSelected ? Color(0xffEFEEFC) : Colors.white,
//               borderRadius: BorderRadius.circular(12),
//               border: Border.all(color: Colors.grey.shade300, width: 2),
//             ),
//             child: Text(
//               word,
//               style: TextStyle(
//                 fontFamily: 'RubikReg',
//                 fontWeight: FontWeight.w900,
//                 fontSize: 16,
//                 color: Colors.grey[800],
//               ),
//               textAlign: TextAlign.center,
//             ),
//           ),
//           if (isSelected)
//             Container(
//               height: 20,
//               width: 20,
//               margin: EdgeInsets.only(top: 4, right: 4),
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: Color(0xff6A5AE0),
//               ),
//               alignment: Alignment.center,
//               child: Text(
//                 '$selectionIndex',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 11,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//         ],
//       ),
//     );
//   }
// }
