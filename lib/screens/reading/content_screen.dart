import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
// 导入故事数据模型
import '../../models/story_model.dart';
// 导入角色信息数据模型
import '../../models/character_info_model.dart';
// 引入示例生字数据
import '../../data/local/sample_data.dart';
// 引入弹窗
import '../../widgets/reading/word_info_dialog.dart';

class ContentScreen extends StatefulWidget {
  final Story story;

  const ContentScreen({super.key, required this.story});

  @override
  ContentScreenState createState() => ContentScreenState();
}

class ContentScreenState extends State<ContentScreen> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  List<TextSpan> _buildTextSpans(String text) {
    List<TextSpan> spans = [];
    for (int i = 0; i < text.length; i++) {
      String char = text[i];
      CharacterInfo? charInfo = sampleCharacterData[char]; // 从数据中查找

      spans.add(
        TextSpan(
          text: char,
          style: TextStyle(
            fontSize: 30, // 调整字体大小
            color: Colors.white, // 文字颜色，确保在背景上可见
            shadows: [ // 给文字加点描边，使其在复杂背景下更清晰
              Shadow(offset: Offset(1.0, 1.0), blurRadius: 2.0, color: Color.fromRGBO(0, 0, 0, 0.7)),
              Shadow(offset: Offset(-1.0, -1.0), blurRadius: 2.0, color: Color.fromRGBO(0, 0, 0, 0.7)),
              Shadow(offset: Offset(1.0, -1.0), blurRadius: 2.0, color: Color.fromRGBO(0, 0, 0, 0.7)),
              Shadow(offset: Offset(-1.0, 1.0), blurRadius: 2.0, color: Color.fromRGBO(0, 0, 0, 0.7)),
            ]
          ),
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              var logger = Logger();
              if (charInfo != null) {
                logger.d("Tapped on: ${charInfo.character}");
                showWordInfoDialog(context, charInfo);
              } else {
                logger.w("No info for: $char");
                // 可以选择性地给用户一个提示，比如 "暂无该字信息"
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('"$char"：暂无该字详细信息'), duration: Duration(seconds: 1),)
                );
              }
            },
        ),
      );
    }
    return spans;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 背景图片
          Positioned.fill(
            child: Image.asset(
              widget.story.backgroundImage,
              fit: BoxFit.cover,
            ),
          ),
          // 翻页视图
          PageView.builder(
            controller: _pageController,
            itemCount: widget.story.pages.length,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              final page = widget.story.pages[index];
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(30.0), // 增加内边距
                  child: RichText(
                    text: TextSpan(
                      children: _buildTextSpans(page.content),
                    ),
                    textAlign: TextAlign.center, // 居中显示
                  ),
                ),
              );
            },
          ),
          // 简单的翻页提示 (可选)
          if (widget.story.pages.length > 1)
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  '第 ${_currentPage + 1} / ${widget.story.pages.length} 页',
                  style: TextStyle(color: Colors.white70, fontSize: 16),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
