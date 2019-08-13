import 'package:flutter/material.dart';
import '../model/post.dart';


class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 网格视图
    return GridViewBuilderDEmo();
  }
}

class GridViewBuilderDEmo extends StatelessWidget {
  Widget _gridItemBuilder(BuildContext context, int index) {
    return Container(
      child: Image.network(
        posts[index].imageUrl,
        fit: BoxFit.cover
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      // 最外层加内边距
      padding: EdgeInsets.all(8),
      itemCount: posts.length,
      itemBuilder: _gridItemBuilder,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8
      ),
    );
  }
}

class GridViewExtentDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> _buildTiles(int length) {
      return List.generate(length, (int index) {
        return Container(
          color: Colors.grey[300],
          alignment: Alignment(0, 0),
          child: Text(
            'item $index',
            style: TextStyle(fontSize: 18.0, color: Colors.grey),
          ),
        );
      });
    }
    // 网格视图
    return GridView.extent(
      // 一行数量
      // crossAxisCount: 3,
      maxCrossAxisExtent: 150,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      // 滚动方向
      // scrollDirection: Axis.horizontal,
      children: _buildTiles(100),
    );
  }
}

class GridViewCountDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> _buildTiles(int length) {
      return List.generate(length, (int index) {
        return Container(
          color: Colors.grey[300],
          alignment: Alignment(0, 0),
          child: Text(
            'item $index',
            style: TextStyle(fontSize: 18.0, color: Colors.grey),
          ),
        );
      });
    }
    // 网格视图
    return GridView.count(
      // 一行数量
      crossAxisCount: 3,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      // 滚动方向
      // scrollDirection: Axis.horizontal,
      children: _buildTiles(100),
    );
  }
}


class PageViewBuildDemo extends StatelessWidget {
  // 按需生成页面
  Widget _pageItemBuilder(BuildContext content, int index) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover
          )
        ),
        Positioned(
          bottom: 8.0,
          left: 8.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                posts[index].title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                posts[index].author
              )
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // 按需生成页面
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder,
    );
  }
}

class PageViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 页面视图
    return PageView(
      // 自动翻页
      // pageSnapping: false,
      // 页面倒置
      // reverse: true,
      // 滚动方向
      scrollDirection: Axis.vertical,
      // 页面改变执行事件
      onPageChanged: (currentPage) => {
        debugPrint('Page: $currentPage')
      },
      // 页面控制
      controller: PageController(
        initialPage: 1,
        // 记录页面状态，默认是true
        keepPage: false,
        // 可视口
        viewportFraction: 0.8,
      ),
      children: <Widget>[
        Container(
          color: Colors.brown[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'ONE',
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        Container(
          color: Colors.blue[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'TWO',
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        Container(
          color: Colors.grey[900],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'THREE',
            style: TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
      ],
    );
  }
}