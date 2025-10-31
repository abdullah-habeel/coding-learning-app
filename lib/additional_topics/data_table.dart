import 'package:easy_coding/view/utilit/colors.dart';
import 'package:easy_coding/widgets/text.dart';
import 'package:flutter/material.dart';
import 'data_model.dart';

class DataTablePrac extends StatefulWidget {
  const DataTablePrac({super.key});

  @override
  State<DataTablePrac> createState() => _DataTablePracState();
}

class _DataTablePracState extends State<DataTablePrac> {
  bool sortAscending = true;
  int? sortColumnIndex;

  // ✅ Sorting ONLY Price for now
  void _sortByPrice(int columnIndex, bool ascending) {
    setState(() {
      sortColumnIndex = columnIndex;
      sortAscending = ascending;
      marketInfo.sort(
        (a, b) =>
            ascending ? a.price.compareTo(b.price) : b.price.compareTo(a.price),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Market Data Table')),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          headingRowColor: WidgetStatePropertyAll(Colors.greenAccent),
          decoration: BoxDecoration(color: Colors.amber),
          sortColumnIndex: sortColumnIndex,
          sortAscending: sortAscending,
          columns: [
            const DataColumn(
              label: MyText(
                text: 'Shop',
                color: MyColors.primary,
                weight: FontWeight.bold,
              ),
            ),
            const DataColumn(label: Text('Location')),
            DataColumn(
              label: const Text('Price'),
              numeric: true,
              onSort: _sortByPrice,
            ),
            const DataColumn(label: Text('Sales')),
            const DataColumn(label: Text('Profit')),
          ],
          rows: marketInfo.map((item) {
            return DataRow(
              cells: [
                DataCell(Text(item.shop)),
                DataCell(Text(item.location)),
                DataCell(Text("Rs ${item.price.toStringAsFixed(0)}")),
                DataCell(Text(item.sales.toString())),
                DataCell(Text("Rs ${item.profit.toStringAsFixed(0)}")),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
