import 'package:flutter/material.dart';
import './buttomDart.dart';
import './floatingButotnDemo.dart';
import './popupMenuButtonDemo.dart';
import './checkboxDemo.dart';
import './radioDemo.dart';
import './switchDemo.dart';
import './sliderDemo.dart';
import './dateTimeDemo.dart';
import './simpleDialogDemo.dart';
import './alertDialogDemo.dart';
import './buttomSheetDemo.dart';
import './snackBarDemo.dart';
import './expansionPanelDemo.dart';
import './chipDemo.dart';
import './DataTableDemo.dart';
import './paginatedDataTableDemo.dart';
import './cardDemo.dart';
import './stepperDemo.dart';

class MaterialComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialComponents'),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(title: 'StepperDemo', page: StepperDemo()),
          ListItem(title: 'CardDemo', page: CardDemo()),
          ListItem(title: 'PaginatedDataTableDemo', page: PaginatedDataTableDemo()),
          ListItem(title: 'DataTableDemo', page: DataTableDemo()),
          ListItem(title: 'ChipDemo', page: ChipDemo()),
          ListItem(title: 'ExpansionPanelDemo', page: ExpansionPanelDemo()),
          ListItem(title: 'SnackBarDemo', page: SnackBarDemo()),
          ListItem(title: 'ButtomSheetDemo', page: ButtomSheetDemo()),
          ListItem(title: 'alertDialogDemo', page: AlertDialogDemo()),
          ListItem(title: 'SimpleDialogDemo', page: SimpleDialogDemo()),
          ListItem(title: 'DateTimeDemo', page: DateTimeDemo()),
          ListItem(title: 'SlideDemo', page: SlideDemo()),
          ListItem(title: 'SwitchDemo', page: SwitchDemo()),
          ListItem(title: 'radioDemo', page: RadioDemo()),
          ListItem(title: 'checkbox', page: CheckboxDemo()),
          ListItem(title: 'popupMenuButton', page: PopupMenuButtonDemo()),
          ListItem(title: 'Buttom', page: ButtomDemo()),
          ListItem(title: 'FloatingActionButton', page: FloatingActionButtonDemo())
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
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({
    this.title,
    this.page,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}