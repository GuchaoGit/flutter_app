import 'package:flutter/material.dart';

import '../model/post.dart';

//数据表格
class DataTableDemo extends StatefulWidget {
  @override
  _DataTableDemoState createState() => _DataTableDemoState();
}

class _DataTableDemoState extends State<DataTableDemo> {
  int _sortColumnIndex = 0;
  bool _sortAscending = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DataTableDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            DataTable(
              sortColumnIndex: _sortColumnIndex, //对哪一列排序
              sortAscending: _sortAscending, //true:升序排列 false:降序排列
//              onSelectAll: (bool value){},//定制全显动作
              columns: [
                DataColumn(
                    label: Container(
//                    width: 150.0,
                      child: Text("Title"),
                    ),
                    onSort: (int index, bool ascending) {
                      //排序方法
                      setState(() {
                        _sortAscending = ascending;
                        _sortColumnIndex = index;
                        posts.sort((a, b) {
                          if (!ascending) {
                            final c = a;
                            a = b;
                            b = c;
                          }
                          return a.title.length.compareTo(b.title.length);
                        });
                      });
                    }),
                DataColumn(
                  label: Text("Author"),
                ),
                DataColumn(
                  label: Text("Image"),
                ),
              ],
              rows: posts.map((post) {
                return DataRow(
                  cells: [
                    DataCell(Text(post.title)),
                    DataCell(Text(post.author)),
                    DataCell(Image.network(post.imageUrl)),
                  ],
                  selected: post.selected,
                  onSelectChanged: (value) {
                    //出现复选框
                    setState(() {
                      if (post.selected != value) {
                        post.selected = value;
                      }
                    });
                  },
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
