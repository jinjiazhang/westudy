class StoryPage {
  final String content; // 页面内容，例如 "床前明月光"
  // 你可以为每一页指定不同的背景，或者故事级别指定一个
  // final String? backgroundImage; 

  StoryPage({required this.content});
}

class Story {
  final String title;
  final String author;
  final String backgroundImage; // 故事的通用背景图
  final List<StoryPage> pages;

  Story({
    required this.title,
    required this.author,
    required this.backgroundImage,
    required this.pages,
  });
}
