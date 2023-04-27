import 'package:flutter/material.dart';



class MyTable extends StatelessWidget {
  final List<String> headers;
  final List<List<TextEditingController>> dataControllers;

  MyTable({required this.headers, required this.dataControllers});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        columns: headers
            .map((header) => DataColumn(label: Text(header)))
            .toList(),
        rows: dataControllers
            .map((rowControllers) =>
                DataRow(cells: rowControllers.map((controller) => DataCell(Text(controller.text))).toList()))
            .toList(),
      ),
    );
  }
}
