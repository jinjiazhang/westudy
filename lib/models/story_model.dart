class StoryPage {
  final String content;

  StoryPage({required this.content});
}

class Story {
  final String title;
  final String author;
  final String cover;
  final String background;
  final List<StoryPage> pages;

  Story({
    required this.title,
    required this.author,
    required this.cover,
    required this.background,
    required this.pages,
  });
}
