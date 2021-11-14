import 'package:design_system/src/tabs/typography_page.dart';
import 'package:flutter/material.dart';

class DesignSystemViewer extends StatelessWidget {
  const DesignSystemViewer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Design System Viewer"),
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(text: 'Color'),
              Tab(text: 'Typography'),
              Tab(text: 'Button'),
              Tab(text: 'Cards'),
              Tab(text: 'Chips'),
              Tab(text: 'Dialog'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Text('aa'),
            TypographyPage(),
            Text('aa'),
            Text('aa'),
            Text('aa'),
            Text('aa'),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: Text('Change theme, brightness, cupertino..'),
        ),
      ),
    );
  }
}
