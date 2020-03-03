import 'package:flutter/material.dart';
import './demo/listViewDemo.dart';
import './demo/helloDemo.dart';
import './demo/drawerDemo.dart';
import './demo/basicDemo.dart';
import './demo/buttonNavigationBarDemo.dart';
import './demo/layoutDemo.dart';
import './demo/viewDemo.dart';
import './demo/sliverDemo.dart';
import './demo/navigatorDemo.dart';
import './demo/formDemo.dart';
import './demo/materialComponentsDemo.dart';
import './demo/state/stateManagementDemo.dart';
import './demo/sound/basicDemo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  // @override 指的是覆盖夫类的build方法
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: NavigatorDemo(),
      home: Home(),
      // home: SliverDemo(),
      // 初始路由
      initialRoute: '/sound',
      routes: {
        // '/': (context) => Hello(),
        '/about': (context) => Page(title: 'About'),
        '/form': (context) => FormDemo(),
        '/mdc': (context) => MaterialComponents(),
        '/state': (context) => StateManagementDemo(),
        '/sound': (context) => VideoScreen(url: 'rtmp://play.leeggco.com/live/33')
      },
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white24,
        accentColor: Colors.lightBlue,
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   tooltip: 'Navigration',
          //   onPressed: () => debugPrint('menu is pressed.'),
          // ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'search',
              onPressed: () => debugPrint('search is pressed.'),
            )
          ],
          title: Text('NINGHAO'),
          elevation: 0.0,
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
              Tab(icon: Icon(Icons.view_quilt)),
              Tab(icon: Icon(Icons.view_agenda)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            BasicDemo(),
            LayoutDemo(),
            ViewDemo(),
            SliverDemo()
          ],
        ),
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigationBarDemo()
      )
    );
  }
}

