// リスト追加画面用Widget
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TodoAddPage extends StatefulWidget {
  @override
  _TodoAddPageState createState() => _TodoAddPageState();
}

// リストを設定し、一覧に追加する
class _TodoAddPageState extends State<TodoAddPage> {
  String text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('リスト追加画面'),
      ),
      body: Container(
        padding: EdgeInsets.all(64),
        child: Column(
          // 真ん中揃え
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // 入力されたテキストを表示
            Text(
              text,
              style: TextStyle(color: Colors.blue),
            ),
            const SizedBox(height: 8),
            TextField(
              onChanged: (String value) {
                // データが変更された場合、呼び出される
                setState(() {
                  text = value;
                });
              },
            ),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // 前画面にテキストの内容を持っていく
                  Navigator.of(context).pop(text);
                },
                child: Text(
                  '追加',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Container(
              // 横幅いっぱい
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  // キャンセル時は値を持っていかない
                  Navigator.of(context).pop();
                },
                child: Text('キャンセル'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
