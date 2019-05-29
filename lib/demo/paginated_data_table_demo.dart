import 'package:flutter/material.dart';

import '../model/post.dart';

//带分页的数据表格
class PaginatedDataTableDemo extends StatefulWidget {
  @override
  _PaginatedDataTableDemoState createState() => _PaginatedDataTableDemoState();
}

class _PaginatedDataTableDemoState extends State<PaginatedDataTableDemo> {
  int _sortColumnIndex = 0;
  bool _sortAscending = true;
  final PostDataTableSource _postDataTableSource = PostDataTableSource();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PaginatedDataTableDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            PaginatedDataTable(
              header: Text('Posts'),
              rowsPerPage: 5,
              //每页条数
              source: _postDataTableSource,
              sortColumnIndex: _sortColumnIndex,
              //对哪一列排序
              sortAscending: _sortAscending,
              //true:升序排列 false:降序排列
//              onSelectAll: (bool value){},//定制全显动作
              columns: [
                DataColumn(
                    label: Container(
//                    width: 150.0,
                      child: Text("Title"),
                    ),
                    onSort: (int index, bool ascending) {
                      //排序
                      //排序方法
                      _postDataTableSource._sort(
                          (post) => post.title.length, ascending);
                      setState(() {
                        _sortAscending = ascending;
                        _sortColumnIndex = index;
                      });
                    }),
                DataColumn(
                  label: Text("Author"),
                ),
                DataColumn(
                  label: Text("Image"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class PostDataTableSource extends DataTableSource {
  final List<Post> _posts = posts;
  int _selectedCount = 0;

  @override
  //行数量
  int get rowCount => _posts.length;

  @override
  //行数是否确定
  bool get isRowCountApproximate => false;

  @override
  //
  int get selectedRowCount => _selectedCount;

  @override
  DataRow getRow(int index) {
    final Post post = _posts[index];
    return DataRow(cells: [
      DataCell(Text(post.title)),
      DataCell(Text(post.author)),
      DataCell(Image.network(post.imageUrl)),
    ]);
  }

  ///提供方法参数
  void _sort(int getField(post), bool ascending) {
    _posts.sort((a, b) {
      if (!ascending) {
        final c = a;
        a = b;
        b = c;
      }
      return Comparable.compare(getField(a), getField(b));
    });
    notifyListeners();
  }
}
