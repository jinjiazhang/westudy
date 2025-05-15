import '../../../models/story_model.dart';

final List<Story> sampleStories = [
  Story(
    title: '鲁滨逊漂流记 (节选)',
    author: '丹尼尔·笛福',
    cover: 'assets/images/robinson_crusoe.png',
    background: 'assets/images/robinson_crusoe.png',
    pages: [
      StoryPage(
        content:
            '我于一六三二年，在约克市出生。我父亲家境富裕，希望我学习法律，将来能继承家业。但我从小就向往航海冒险，渴望探索未知的世界。',
      ),
      StoryPage(
        content: '我的父亲是一个不来梅的外地人，他定居在约克，娶了我母亲。我有三个兄弟姐妹，但只有我最不安分，总是梦想着离开家乡。',
      ),
      StoryPage(
        content: '尽管父亲多次劝说我留在家乡，过安稳的生活，但我还是在十九岁那年，偷偷登上了前往伦敦的船只，开始了我的航海生涯。',
      ),
      StoryPage(content: '在海上经历了多次风暴和危险后，我终于来到了巴西。在那里，我开始经营种植园，生活逐渐稳定下来。'),
      StoryPage(
        content: '然而，冒险的欲望从未离开过我。一次，我决定搭乘一艘商船前往非洲，不幸的是，船只在途中遭遇风暴，最终在一座荒岛上搁浅。',
      ),
      StoryPage(content: '就这样，我成为了这座荒岛的唯一居民，开始了长达二十八年的孤独生活。'),
    ],
  ),
];
