// import 'package:display_tracking/domain/enities/enities.dart';
// import 'package:display_tracking/presentation/resource/ui_contants.dart';
// import 'package:flutter/material.dart';

// class CheckBoxTableWidget extends StatefulWidget {
//   const CheckBoxTableWidget({
//     super.key,
//     required this.data,
//     required this.contentHeaders,
//     required this.checkData,
//     required this.onChanged,
//   });
//   final List<Store> data;
//   final List<bool> checkData;
//   final List<String> contentHeaders;
//   final Function(List<bool> value) onChanged;
//   @override
//   State<CheckBoxTableWidget> createState() => _CheckBoxTableWidgetState();
// }

// class _CheckBoxTableWidgetState extends State<CheckBoxTableWidget> {
//   late List<bool> listCheck;
//   @override
//   void initState() {
//     listCheck = List<bool>.generate(widget.data.length, (index) => false);
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: DataTable(
//         showCheckboxColumn: true,
//         columnSpacing: marginSizeMedium,
//         columns: widget.contentHeaders.map((e) {
//           return DataColumn(
//             label: Text(
//               e,
//               textAlign: TextAlign.center,
//             ),
//           );
//         }).toList(),
//         rows: [
//           ...widget.data.map(
//             (item) {
//               return DataRow(
//                 cells: [
//                   DataCell(
//                     Container(
//                       constraints:
//                           const BoxConstraints(maxWidth: heightSizeXLarge),
//                       child: Text(
//                         item.store.name,
//                         overflow: TextOverflow.ellipsis,
//                       ),
//                     ),
//                   ),
//                   DataCell(
//                     Container(
//                       constraints:
//                           const BoxConstraints(maxWidth: widthSizeSNormal),
//                       child: Text(
//                         item.address,
//                         overflow: TextOverflow.ellipsis,
//                       ),
//                     ),
//                   ),
//                   DataCell(
//                     Container(
//                       constraints:
//                           const BoxConstraints(maxWidth: heightSizeXNormal),
//                       child: Text(
//                         item.auditor.toString(),
//                         overflow: TextOverflow.ellipsis,
//                       ),
//                     ),
//                   ),
//                   DataCell(Checkbox(
//                     value: widget.checkData[widget.data.indexOf(item)],
//                     onChanged: (value) {
//                       setState(() {
//                         listCheck = List<bool>.generate(
//                             widget.data.length, (index) => false);

//                         listCheck[widget.data.indexOf(item)] = value ?? false;
//                       });
//                       widget.onChanged(listCheck);
//                     },
//                   )),
//                 ],
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
