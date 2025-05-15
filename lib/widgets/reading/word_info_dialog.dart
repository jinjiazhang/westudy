import 'package:flutter/material.dart';
// 导入角色信息数据模型
import '../../models/character_info_model.dart';

void showWordInfoDialog(BuildContext context, CharacterInfo charInfo) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          charInfo.character,
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        content: SingleChildScrollView( // 如果内容多，可以滚动
          child: ListBody(
            children: <Widget>[
              Text('拼音: ${charInfo.pinyin}', style: TextStyle(fontSize: 18)),
              SizedBox(height: 8),
              Text('笔画: ${charInfo.strokes}', style: TextStyle(fontSize: 18)),
              SizedBox(height: 8),
              Text('释义: ${charInfo.meaning}', style: TextStyle(fontSize: 18)),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: Text('关闭'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
