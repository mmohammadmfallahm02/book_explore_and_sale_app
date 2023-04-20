import 'package:book_explore_and_sale_app/models/models.dart';
import 'package:flutter/material.dart';
import '../common/widgets/widgets.dart';
import '../data/data.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<PosterEntity> posters = FakeData.posters;
    return Scaffold(
      body: Column(children: [
        const SizedBox(
          height: 22,
        ),
        PosterWidget(posters: posters)
      ]),
    );
  }
}
