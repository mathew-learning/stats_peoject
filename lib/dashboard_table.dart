import 'package:flutter/material.dart';


class TablePage extends StatelessWidget {
  const TablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(),
      columnWidths: const <int, TableColumnWidth>{
        0: IntrinsicColumnWidth(),
        1: FlexColumnWidth(),
        2: FixedColumnWidth(64),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: <TableRow>[
        TableRow(
          decoration: const BoxDecoration(
            color: Colors.greenAccent,
            
          ),
          children: <Widget>[
            Container(
              height: 32,
            ),
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.top,
              child: Container(
                height: 32,
                width: 32,
              ),
            ),
            Container(
              height: 64,
            ),
          ],
        ),
        TableRow(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          children: <Widget>[
            Container(
              height: 64,
              width: 128,
            ),
            Container(
              height: 32,
            ),
            Center(
              child: Container(
                height: 32,
                width: 32,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
