// 导入角色信息数据模型
import '../../../models/word_info_model.dart';
// 导入故事数据模型
import '../../../models/story_model.dart';

// 示例生字数据
// 在实际应用中，这部分数据可能非常庞大，需要从数据库或API获取
final Map<String, WordInfoModel> sampleCharacterData = {
  '床': WordInfoModel(character: '床', pinyin: 'chuáng', strokes: '7画', meaning: '供人躺在上面睡觉的家具。'),
  '前': WordInfoModel(character: '前', pinyin: 'qián', strokes: '9画', meaning: '方位词。跟“后”相对。'),
  '明': WordInfoModel(character: '明', pinyin: 'míng', strokes: '8画', meaning: '亮，与“暗”相对。'),
  '月': WordInfoModel(character: '月', pinyin: 'yuè', strokes: '4画', meaning: '月球，通常指其在地球上的可见部分。'),
  '光': WordInfoModel(character: '光', pinyin: 'guāng', strokes: '6画', meaning: '通常指照耀在物体上，使人能看见物体的那种物质。'),
  '疑': WordInfoModel(character: '疑', pinyin: 'yí', strokes: '14画', meaning: '怀疑；不相信。'),
  '是': WordInfoModel(character: '是', pinyin: 'shì', strokes: '9画', meaning: '表示肯定。'),
  '地': WordInfoModel(character: '地', pinyin: 'dì', strokes: '6画', meaning: '地球的表面。'),
  '霜': WordInfoModel(character: '霜', pinyin: 'shuāng', strokes: '17画', meaning: '接近地面空气中的水蒸气或水汽凝华而成的白色松脆的冰晶。'),
  '举': WordInfoModel(character: '举', pinyin: 'jǔ', strokes: '9画', meaning: '向上抬，向上托。'),
  '头': WordInfoModel(character: '头', pinyin: 'tóu', strokes: '5画', meaning: '人或动物脖子以上的部分。'),
  '望': WordInfoModel(character: '望', pinyin: 'wàng', strokes: '11画', meaning: '向远处看；向高处看。'),
  '低': WordInfoModel(character: '低', pinyin: 'dī', strokes: '7画', meaning: '从下向上距离小。跟“高”相对。'),
  '故': WordInfoModel(character: '故', pinyin: 'gù', strokes: '9画', meaning: '缘故；原因。'),
  '乡': WordInfoModel(character: '乡', pinyin: 'xiāng', strokes: '3画', meaning: '家乡；故乡。'),
  // ... 可以添加更多字
};

// 示例故事数据
final List<Story> sampleStories = [
  Story(
    title: '静夜思',
    author: '李白',
    backgroundImage: 'assets/images/night_sky.jpg', // 确保图片路径正确
    pages: [
      StoryPage(content: '床前明月光，'),
      StoryPage(content: '疑是地上霜。'),
      StoryPage(content: '举头望明月，'),
      StoryPage(content: '低头思故乡。'),
    ],
  ),
  // 你可以添加更多故事，例如鲁滨逊漂流记的节选
  // Story(
  //   title: '鲁滨逊漂流记 (节选)',
  //   author: '丹尼尔·笛福',
  //   backgroundImage: 'assets/images/island_background.jpg', // 换个背景
  //   pages: [
  //     StoryPage(content: '我于一六三二年，在约克市出生...'),
  //     StoryPage(content: '我的父亲是一个不来梅的外地人...'),
  //   ],
  // ),
];
