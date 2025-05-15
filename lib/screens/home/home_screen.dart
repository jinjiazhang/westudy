import 'package:flutter/material.dart';
import '../square/square_screen.dart';
import '../library/library_screen.dart';
import '../quiz/quiz_screen.dart';
import '../profile/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // 当前选中的页面索引
  int _selectedIndex = 1; // 默认选中"阅读"页签
  
  // 页面列表
  final List<Widget> _pages = [
    const SquareScreen(),
    const LibraryScreen(),
    const QuizScreen(),
    const ProfileScreen(),
  ];
  
  // 底部导航项
  final List<BottomNavigationBarItem> _navItems = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.public),
      label: '广场',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.book),
      label: '书架',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.quiz),
      label: '测验',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: '我的',
    ),
  ];

  // 切换页面
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 显示当前选中的页面
      body: _pages[_selectedIndex],
      
      // 底部导航栏
      bottomNavigationBar: BottomNavigationBar(
        items: _navItems,
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed, // 固定样式，不会随着选中而变化
        onTap: _onItemTapped,
      ),
    );
  }
}
