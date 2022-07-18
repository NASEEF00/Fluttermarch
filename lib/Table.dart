import 'package:flutter/material.dart';

class TableEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Table"),
      ),
      body: ListView(
        children: [
          const Center(
              child: Text(
            "Employee Details",
            style: TextStyle(fontSize: 20),
          )),
          Center(
            child: Card(
              shadowColor: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                children: [
                  DataTable(
                    columnSpacing: 100,
                    decoration: const BoxDecoration(
                      // border: Border.all(),
                      color: Colors.white10,
                    ),
                    columns: const [
                      DataColumn(label: Text("ID")),
                      DataColumn(
                        label: Text("Name"),
                      ),
                      DataColumn(
                        label: Text("Profession"),
                      ),
                    ],
                    rows: const [
                      DataRow(
                        cells: [
                          DataCell(Text("1")),
                          DataCell(Text("Abcd")),
                          DataCell(Text("Doctor")),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text("1")),
                          DataCell(Text("Abcd")),
                          DataCell(Text("Doctor")),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(Text("1")),
                          DataCell(Text("Abcd")),
                          DataCell(Text("Doctor")),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
