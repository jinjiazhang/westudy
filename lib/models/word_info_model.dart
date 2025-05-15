/// 单字信息模型
class WordInfoModel {
  final String character;
  final String pinyin;
  final String strokes; // 可以是笔画数，或者更复杂的笔顺SVG数据
  final String meaning;

  WordInfoModel({
    required this.character,
    required this.pinyin,
    required this.strokes,
    required this.meaning,
  });
}
