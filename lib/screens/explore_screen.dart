import 'package:book_explore_and_sale_app/common/constants/constants.dart';
import 'package:book_explore_and_sale_app/common/theme/colors.dart';
import 'package:book_explore_and_sale_app/models/models.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../common/widgets/widgets.dart';
import '../data/data.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final List<PosterEntity> posters = FakeData.posters;
    final List<String> categories = FakeData.categories;

    return Scaffold(
      body: CategoriesWidget(
          posters: posters, themeData: themeData, categories: categories),
    );
  }
}

class CategoriesWidget extends StatefulWidget {
  const CategoriesWidget({
    Key? key,
    required this.posters,
    required this.themeData,
    required this.categories,
  }) : super(key: key);

  final List<PosterEntity> posters;
  final ThemeData themeData;
  final List<String> categories;

  @override
  State<CategoriesWidget> createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  int selectedCategoryIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(
        height: 22,
      ),
      PosterWidget(posters: widget.posters),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(
                MyDimens.bodyMargin, 20, MyDimens.bodyMargin, 6),
            child: Text(
              'Categories',
              style: widget.themeData.textTheme.headline4,
            ),
          ),
          SizedBox(
            height: 20.h,
            child: ListView.builder(
                itemCount: widget.categories.length,
                shrinkWrap: true,
                padding: EdgeInsets.only(left: 16.w, right: 20.w),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final category = widget.categories[index];
                  return Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          selectedCategoryIndex = index;
                        });
                      },
                      child: Container(
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.only(left: 4, right: 6),
                        decoration: index == selectedCategoryIndex
                            ? const BoxDecoration(
                                border: Border(
                                bottom: BorderSide(
                                    width: 2.5, color: MyColors.primaryColor),
                              ))
                            : null,
                        child: Text(
                          category,
                          style: widget.themeData.textTheme.subtitle2,
                        ),
                      ),
                    ),
                  );
                }),
          )
        ],
      )
    ]);
  }
}
