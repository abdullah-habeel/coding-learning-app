import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

class Student {
  final String name;
  final String city;
  final int marks;

  Student(this.name, this.city, this.marks);
}

List<Student> allStudents = List.generate(
  50,
  (i) => Student("Student $i", "City ${i % 4}", 50 + i),
);

class DataTable2Demo extends StatefulWidget {
  const DataTable2Demo({super.key});

  @override
  State<DataTable2Demo> createState() => _DataTable2DemoState();
}

class _DataTable2DemoState extends State<DataTable2Demo> {
  List<Student> filteredList = List.from(allStudents);
  int rowsPerPage = 5;
  bool sortAscending = true;

  TextEditingController searchController = TextEditingController();

  void _applySearch(String query) {
    setState(() {
      final q = query.toLowerCase();
      filteredList = allStudents.where((s) {
        return s.name.toLowerCase().contains(q) ||
            s.city.toLowerCase().contains(q) ||
            s.marks.toString().contains(q);
      }).toList();
    });
  }

  void _sortMarks(bool ascending) {
    setState(() {
      sortAscending = ascending;
      filteredList.sort(
        (a, b) =>
            ascending ? a.marks.compareTo(b.marks) : b.marks.compareTo(a.marks),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Styled DataTable2")),
      body: Column(
        children: [
          // ✅ Search Field
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                labelText: "Search...",
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    12,
                  ), // ✅ Styling: rounded search box
                ),
              ),
              onChanged: _applySearch,
            ),
          ),

          Expanded(
            child: Container(
              margin: const EdgeInsets.all(
                10,
              ), // ✅ Add outer spacing around table
              decoration: BoxDecoration(
                color: Colors.white, // ✅ Table background color
                borderRadius: BorderRadius.circular(14), // ✅ Rounded corners
                boxShadow: [
                  BoxShadow(
                    blurRadius: 8, // ✅ Shadow effect radius
                    spreadRadius: 2,
                    color: Colors.black.withValues(), // ✅ Soft shadow
                  ),
                ],
              ),
              child: PaginatedDataTable2(
                wrapInCard: false, // ✅ Disable default card wrapper

                headingRowColor: WidgetStateProperty.all(
                  Colors.deepPurple.shade100, // ✅ Header background color
                ),
                headingTextStyle: const TextStyle(
                  fontWeight: FontWeight.bold, // ✅ Bold header text
                  fontSize: 16, // ✅ Bigger header text
                ),

                dataRowHeight: 50, // ✅ Row height
                columnSpacing: 20, // ✅ Space between columns
                dividerThickness: 0.8, // ✅ Line thickness between rows
                horizontalMargin: 16, // ✅ Table padding from left/right
                showCheckboxColumn: false, // ✅ Remove checkbox column

                rowsPerPage: rowsPerPage,
                availableRowsPerPage: const [5, 10, 20],
                onRowsPerPageChanged: (v) => setState(() => rowsPerPage = v!),

                sortColumnIndex: 2,
                sortAscending: sortAscending,

                columns: [
                  const DataColumn2(label: Text("Name")),
                  const DataColumn2(label: Text("City")),
                  DataColumn2(
                    label: const Text("Marks"),
                    numeric: true,
                    onSort: (col, asc) => _sortMarks(asc),
                  ),
                ],
                source: _StyledDataSource(filteredList),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ✅ Styling applied inside rows too
class _StyledDataSource extends DataTableSource {
  final List<Student> data;
  _StyledDataSource(this.data);

  @override
  DataRow getRow(int index) {
    final s = data[index];

    return DataRow(
      color: WidgetStateProperty.resolveWith<Color?>((states) {
        if (states.contains(WidgetState.hovered)) {
          return Colors.deepPurple.shade50; // ✅ Hover row highlight
        }
        return index % 2 == 0
            ? Colors
                  .grey
                  .shade100 // ✅ Zebra stripe even row
            : Colors.white; // ✅ Zebra stripe odd row
      }),
      cells: [
        DataCell(
          Row(
            children: [
              const Icon(Icons.person, size: 18), // ✅ Icon before name
              const SizedBox(width: 6), // ✅ Spacing between icon and text
              Text(s.name),
            ],
          ),
        ),
        DataCell(Text(s.city)),
        DataCell(Text("${s.marks}")),
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;
  @override
  int get rowCount => data.length;
  @override
  int get selectedRowCount => 0;
}
