import 'package:flutter/material.dart';

class PaginatedTableDemo extends StatelessWidget {
  const PaginatedTableDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Paginated DataTable")),
      body: const ProductPaginatedTable(),
    );
  }
}

class Product {
  final String name;
  final String category;
  final int price;

  Product(this.name, this.category, this.price);
}

List<Product> products = List.generate(
  50,
  (index) => Product("Product $index", "Category ${index % 5}", (100 + index)),
);

// Data Source for Pagination
class ProductDataSource extends DataTableSource {
  @override
  DataRow? getRow(int index) {
    if (index >= products.length) return null;
    final p = products[index];

    return DataRow(
      cells: [
        DataCell(Text(p.name)),
        DataCell(Text(p.category)),
        DataCell(Text("Rs ${p.price}")),
      ],
    );
  }

  @override
  int get rowCount => products.length;

  @override
  bool get isRowCountApproximate => false;

  @override
  int get selectedRowCount => 0;
}

// UI Table Page
class ProductPaginatedTable extends StatefulWidget {
  const ProductPaginatedTable({super.key});

  @override
  State<ProductPaginatedTable> createState() => _ProductPaginatedTableState();
}

class _ProductPaginatedTableState extends State<ProductPaginatedTable> {
  final ProductDataSource _data = ProductDataSource();
  int _rowsPerPage = 5;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: PaginatedDataTable(
        header: const Text(
          "Store Products",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        rowsPerPage: _rowsPerPage,
        availableRowsPerPage: const [5, 10, 15],
        onRowsPerPageChanged: (value) {
          setState(() => _rowsPerPage = value!);
        },
        columnSpacing: 30,
        columns: const [
          DataColumn(label: Text("Name")),
          DataColumn(label: Text("Category")),
          DataColumn(label: Text("Price")),
        ],
        source: _data,
      ),
    );
  }
}
