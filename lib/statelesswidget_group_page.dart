import 'package:flutter/material.dart';

class StatelessWidgetGroupPage extends StatelessWidget {
  // StatelessWidget：不依赖自身的状态来实现自己的显示
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StalessWidget与其相关组件',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('StalessWidget与其相关组件')),
        body: Container(  //容器组件
          decoration: BoxDecoration(color: Colors.white), // 装饰器：可设置背景、背景色等
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Text('nihao', style: TextStyle(fontSize: 22, color: Colors.yellow),),
              Icon(Icons.android, size: 50, color: Colors.green,),
              CloseButton(),
              BackButton(),
              Chip(label: Text('Chip'), avatar: Icon(Icons.people),),
              Divider(
                color: Colors.orange,
                height: 10, // 容器高度不是线的高度
                indent: 10, // 左边的间距
              ), // 分割线
              Card(
                // 带有圆角、阴影效果，边框等效果的卡片
                color: Colors.blue,
                elevation: 5,   // 阴影
                margin: EdgeInsets.all(10), // 内边距都是10
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Text('I am Card!', style: TextStyle(fontSize: 22),),
                ),
              ),
              AlertDialog(
                title: Text('title'),
                content: Text('This is Content!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
