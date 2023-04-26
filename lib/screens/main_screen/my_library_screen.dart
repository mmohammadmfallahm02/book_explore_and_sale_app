import 'package:book_explore_and_sale_app/common/constants/constants.dart';
import 'package:book_explore_and_sale_app/common/theme/colors.dart';
import 'package:book_explore_and_sale_app/common/widgets/widgets.dart';
import 'package:book_explore_and_sale_app/data/data.dart';
import 'package:book_explore_and_sale_app/gen/assets.gen.dart';
import 'package:book_explore_and_sale_app/models/book_model.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/percent_indicator.dart';

class MyLibraryScreen extends StatelessWidget {
  const MyLibraryScreen({super.key});
  Widget _buildTitleWidget(ThemeData themeData) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        MyDimens.bodyMargin,
        19,
        MyDimens.bodyMargin,
        11,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hi Emily,',
            style: themeData.textTheme.headline6!
                .copyWith(fontWeight: FontWeight.w400),
          ),
          const SizedBox(
            height: 18,
          ),
          Text(
            'My Library',
            style: themeData.textTheme.headline4,
          ),
        ],
      ),
    );
  }

  Widget _buildCurrentReadingBookListWidget(
      List<CurrentBookEntity> currentReadingList, ThemeData themeData) {
    return SizedBox(
        height: 250,
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: currentReadingList.length + 1,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              if (index == currentReadingList.length) {
                return _buildDiscoverMoreWidget();
              } else {
                final currentBook = currentReadingList[index];
                return _buildCurrentReadingBookItemWidget(
                    currentBook, themeData);
              }
            }));
  }

  Widget _buildDiscoverMoreWidget() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          DottedBorder(
            borderType: BorderType.RRect,
            radius: const Radius.circular(2),
            color: MyColors.secondaryColor,
            strokeWidth: 1,
            child: SizedBox(
              width: 117.w,
              height: 156.h,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(Assets.images.icons.plus.path),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text(
                      'Discover More',
                      style: TextStyle(
                          color: MyExclusiveColors.discoverMoreButtonColor,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
            ),
          ),
          const Expanded(
            child: SizedBox(),
          )
        ],
      ),
    );
  }

  Widget _buildCurrentReadingBookItemWidget(
      CurrentBookEntity currentBook, ThemeData themeData) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 117.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(5),
              ),
              child: Image.asset(
                currentBook.imageUrl,
                width: 117.w,
                height: 156.h,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 11),
            Text(
              currentBook.title,
              style: themeData.textTheme.headline5,
            ),
            const SizedBox(
              height: 11,
            ),
            Row(
              children: [
                Expanded(
                  child: LinearPercentIndicator(
                    barRadius: const Radius.circular(5),
                    width: 108,
                    lineHeight: 4,
                    padding: const EdgeInsets.all(0),
                    percent: currentBook.readingPercent / 100,
                    backgroundColor: const Color(0xffDADADA),
                    progressColor: MyColors.primaryVariantColor,
                  ),
                ),
                Text(
                  '${currentBook.readingPercent.toString()}%',
                  style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 8,
                      color: MyExclusiveColors.iconColor),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final List<CurrentBookEntity> currentReadingList =
        FakeData.currentReadingList;
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(46),
          child: AppBarWidget(),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTitleWidget(themeData),
            _buildCurrentReadingBookListWidget(currentReadingList, themeData)
          ],
        ));
  }
}
