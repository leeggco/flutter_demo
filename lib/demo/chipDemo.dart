import 'package:flutter/material.dart';

class ChipDemo extends StatefulWidget {
  @override
  _ChipDemoState createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {
  List<String> _tags = [
    'Apple',
    'Banana',
    'Lemon'
  ];

  String _action = 'Noting';
  List<String> _selected = [];
  String _choice = 'Lemon';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ChipDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Wrap(
              spacing: 9,
              runSpacing: 9,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Chip(
                  label: Text('Life'),
                ),
                Chip(
                  label: Text('Sunset'),
                  backgroundColor: Colors.orange,
                ),
                Chip(
                  label: Text('LEGGGCO'),
                  avatar: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Text('黎')
                  ),
                ),
                Chip(
                  label: Text('LEGGGCOoooo'),
                  avatar: CircleAvatar(
                    backgroundImage: NetworkImage('https://www.leeggco.com/wp-content/themes/leeggco/images/avatar.jpg'),
                    // child: Text('黎')
                  ),
                ),
                Chip(
                  label: Text('City'),
                  onDeleted: () {},
                  deleteIcon: Icon(Icons.delete),
                  deleteIconColor: Colors.redAccent,
                  deleteButtonTooltipMessage: 'Remove this tag',
                ),
                Divider(
                  color: Colors.grey,
                  height: 32,
                  indent: 10,
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((tag) {
                    return Chip(
                      label: Text(tag),
                      onDeleted: () {
                        setState(() {
                          _tags.remove(tag);
                        });
                      },
                    );
                  }).toList(),
                ),
                Divider(
                  color: Colors.grey,
                  height: 32,
                  indent: 10,
                ),
                Container(
                  width: double.infinity,
                  child: Text('ActionChip: $_action')
                ),
                Wrap(
                  spacing: 8,
                  children: _tags.map((tag) {
                    return ActionChip(
                      label: Text(tag),
                      onPressed: () {
                        setState(() {
                          _action = tag;
                        });
                      },
                      // onDeleted: () {
                      //   setState(() {
                      //     _tags.remove(tag);
                      //   });
                      // }
                    );
                  }).toList()
                ),
                Divider(
                  color: Colors.grey,
                  height: 32,
                  indent: 10,
                ),
                Container(
                  width: double.infinity,
                  child: Text('FilterChip: ${_selected.toString()}'),
                ),
                Wrap(
                  spacing: 8,
                  children: _tags.map((tag) {
                    return FilterChip(
                      label: Text(tag),
                      selected: _selected.contains(tag),
                      onSelected: (value) {
                        setState(() {
                          if (_selected.contains(tag)) {
                            _selected.remove(tag);
                          } else {
                            _selected.add(tag);
                          }
                        });
                      },
                      // onDeleted: () {
                      //   setState(() {
                      //     _tags.remove(tag);
                      //   });
                      // }
                    );
                  }).toList()
                ),
                Divider(
                  color: Colors.grey,
                  height: 32,
                  indent: 10,
                ),
                Container(
                  width: double.infinity,
                  child: Text('ChoiceChip: $_choice'),
                ),
                Wrap(
                  spacing: 8,
                  children: _tags.map((tag) {
                    return FilterChip(
                      label: Text(tag),
                      selected: _choice == tag,
                      onSelected: (value) {
                        setState(() {
                          _choice = tag;
                        });
                      },
                      // onDeleted: () {
                      //   setState(() {
                      //     _tags.remove(tag);
                      //   });
                      // }
                    );
                  }).toList()
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore),
        onPressed: () {
          setState(() {
            _tags = [
              'Apple',
              'Banana',
              'Lemon'
            ];

            _selected = [];

            _choice = 'Lemon';
          });
        },
      ),
    );
  }
}