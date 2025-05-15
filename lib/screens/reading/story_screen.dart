import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import '../../models/story_model.dart';
import '../../models/word_info_model.dart';
import '../../data/local/sample_word.dart';
import '../../widgets/reading/word_info_dialog.dart';

/// 故事阅读页面
class StoryScreen extends StatefulWidget {
  final Story story;

  const StoryScreen({super.key, required this.story});

  @override
  StoryScreenState createState() => StoryScreenState();
}

class StoryScreenState extends State<StoryScreen> {
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
      WordInfoModel? charInfo = sampleWordData[char]; // 从数据中查找

      spans.add(
        TextSpan(
          text: char,
          style: TextStyle(
            fontSize: 30, // 调整字体大小
            color: Colors.white, // 文字颜色，确保在背景上可见
            shadows: [
              // 给文字加点描边，使其在复杂背景下更清晰
              Shadow(
                offset: Offset(1.0, 1.0),
                blurRadius: 2.0,
                color: Color.fromRGBO(0, 0, 0, 0.7),
              ),
              Shadow(
                offset: Offset(-1.0, -1.0),
                blurRadius: 2.0,
                color: Color.fromRGBO(0, 0, 0, 0.7),
              ),
              Shadow(
                offset: Offset(1.0, -1.0),
                blurRadius: 2.0,
                color: Color.fromRGBO(0, 0, 0, 0.7),
              ),
              Shadow(
                offset: Offset(-1.0, 1.0),
                blurRadius: 2.0,
                color: Color.fromRGBO(0, 0, 0, 0.7),
              ),
            ],
          ),
          recognizer:
              TapGestureRecognizer()
                ..onTap = () {
                  var logger = Logger();
                  if (charInfo != null) {
                    logger.d("点击了：${charInfo.word}");
                    showWordInfoDialog(context, charInfo);
                  } else {
                    logger.w("没有该字信息：$char");
                    // 可以选择性地给用户一个提示，比如 "暂无该字信息"
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('"$char"：暂无该字详细信息'),
                        duration: Duration(seconds: 1),
                      ),
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
            child: Image.asset(widget.story.background, fit: BoxFit.cover),
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
                    text: TextSpan(children: _buildTextSpans(page.content)),
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
                  '第${_currentPage + 1} / ${widget.story.pages.length} 页',
                  style: TextStyle(color: Colors.white70, fontSize: 16),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
