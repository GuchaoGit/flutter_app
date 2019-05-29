import 'package:flutter/material.dart';

import 'alert_dialog_demo.dart';
import 'bottom_sheet_demo.dart';
import 'button_demo.dart';
import 'card_demo.dart';
import 'checkbox_demo.dart';
import 'chip_demo.dart';
import 'data_table_demo.dart';
import 'date_time_demo.dart';
import 'expansion_panel_demo.dart';
import 'floating_action_button_demo.dart';
import 'form_demo.dart';
import 'paginated_data_table_demo.dart';
import 'popup_menu_button_demo.dart';
import 'radio_demo.dart';
import 'simple_dialog_demo.dart';
import 'slider_demo.dart';
import 'snack_bar_demo.dart';
import 'switch_demo.dart';

class MaterialComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(null),
        title: Text('MaterialComponents'),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(title: 'CardDemo', page: CardDemo()),
          ListItem(
              title: 'PaginatedDataTableDemo', page: PaginatedDataTableDemo()),
          ListItem(title: 'DataTableDemo', page: DataTableDemo()),
          ListItem(title: 'ChipDemo', page: ChipDemo()),
          ListItem(title: 'ExpansionPanelDemo', page: ExpansionPanelDemo()),
          ListItem(title: 'SnackBarDemo', page: SnackBarDemo()),
          ListItem(title: 'BottomSheetDemo', page: BottomSheetDemo()),
          ListItem(title: 'AlertDialogDemo', page: AlertDialogDemo()),
          ListItem(title: 'SimpleDialogDemo', page: SimpleDialogDemo()),
          ListItem(title: 'DateTimeDemo', page: DateTimeDemo()),
          ListItem(title: 'SliderDemo', page: SliderDemo()),
          ListItem(title: 'SwitchDemo', page: SwitchDemo()),
          ListItem(title: 'RadioDemo', page: RadioDemo()),
          ListItem(title: 'CheckboxDemo', page: CheckBoxDemo()),
          ListItem(title: 'Form', page: FormDemo()),
          ListItem(
              title: 'FloatingActionButton', page: FloatingActionButtonDemo()),
          ListItem(title: 'ButtonDemo', page: ButtonDemo()),
          ListItem(title: 'PopupMenuButtonDemo', page: PopupMenuButtonDemo()),
        ],
      ),
    );
  }
}

class _WidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('_WidgetDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[],
            ),
          ],
        ),
      ),
    );
  }
}

//ListView item 封装
class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({this.title, this.page});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext context) {
          return page;
        }));
      },
    );
  }
}
