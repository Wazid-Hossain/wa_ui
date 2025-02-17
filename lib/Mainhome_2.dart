// import 'dart:ui';

// import 'package:flutter/material.dart';

// Widget dashboardCard(String title, String qty, String amount, Color color) {
//   return Card(
//     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//     elevation: 3,
//     child: Padding(
//       padding: EdgeInsets.symmetric(
//         horizontal: MediaQuery.of(context).size.width * 0.04,
//         vertical: 12,
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           // Text Column
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   title,
//                   style: TextStyle(
//                       fontSize: 16, fontWeight: FontWeight.bold, color: color),
//                 ),
//                 const SizedBox(height: 5),
//                 Text("Qty: $qty"),
//                 Text("Amount: $amount"),
//               ],
//             ),
//           ),
//           // Icon Button
//           Align(
//             alignment: Alignment.centerRight,
//             child: IconButton(
//               onPressed: () {},
//               icon: const Icon(Icons.forward),
//               splashRadius: 24, // Optional: Adjust touch target size
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }
