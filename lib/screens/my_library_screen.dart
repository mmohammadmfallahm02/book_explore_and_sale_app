import 'package:book_explore_and_sale_app/common/widgets/widgets.dart';
import 'package:flutter/material.dart';

class MyLibraryScreen extends StatelessWidget {
  const MyLibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(46),
        child: AppBarWidget(),
      ),
      body: Center(
        child: Text('this is for test'),
      ),
    );
  }
}
