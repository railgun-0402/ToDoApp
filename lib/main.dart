import 'package:flutter/material.dart';
import 'package:todo_sample/todo_add.dart';

void main() {
  runApp(MyTodoApp());
}

class MyTodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // アプリ名
      title: 'My Todo App',
      theme: ThemeData(
        // テーマカラー
        primarySwatch: Colors.blue,
      ),
      // リスト一覧画面表示
      home: TodoListPage(),
    );
  }
}

// リスト一覧画面用Widget
class TodoListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("リスト一覧"),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              title: Text('機能Aを実行する'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('機能Bを実行する'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('機能Cを実行する'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('機能Dを実行する'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // ボタン押下時処理
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) {
              // 遷移先の画面としてリスト追加画面を指定
              return TodoAddPage();
            }),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
