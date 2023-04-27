import 'package:book_explore_and_sale_app/common/constants/constants.dart';
import 'package:book_explore_and_sale_app/common/theme/colors.dart';
import 'package:book_explore_and_sale_app/common/widgets/widgets.dart';
import 'package:book_explore_and_sale_app/data/data.dart';
import 'package:book_explore_and_sale_app/gen/assets.gen.dart';
import 'package:book_explore_and_sale_app/models/book_model.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
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

  Widget _buildTitleAndSeeMoreWidget(ThemeData themeData) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 32, 20, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'My Wishlist',
            style: themeData.textTheme.headline4!
                .apply(color: MyColors.primaryColor),
          ),
          Container(
            width: 55,
            height: 18,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                border: Border.all(color: const Color(0xffDADADA)),
                borderRadius: const BorderRadius.all(Radius.circular(5))),
            child: Text(
              'See More',
              style: themeData.textTheme.subtitle1!.copyWith(
                  color: MyColors.primaryColor, fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildMyWishlistWidget(
      List<BookEntity> myWishListBooks, ThemeData themeData) {
    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        padding: EdgeInsets.fromLTRB(
            MyDimens.bodyMargin * 1.3, 15, MyDimens.bodyMargin * 1.1, 0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 7,
            mainAxisSpacing: 13,
            childAspectRatio: 138.w / 85.h),
        itemCount: myWishListBooks.length,
        itemBuilder: (context, index) {
          final book = myWishListBooks[index];
          return _buildMyWishlistItemWidget(book, themeData);
        });
  }

  Widget _buildMyWishlistItemWidget(BookEntity book, ThemeData themeData) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image.asset(
            book.imageUrl,
            width: 65.w,
            height: 90.h,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 16,
            ),
            Text(
              book.title,
              style: themeData.textTheme.subtitle2!
                  .apply(color: MyColors.primaryTextColor),
            ),
            const SizedBox(
              height: 3,
            ),
            Expanded(
                child: Text(
              book.author,
             style: themeData.textTheme.subtitle2
            )),
            RatingBarIndicator(
              rating: book.star,
              itemBuilder: (context, index) => const Icon(
                Icons.star,
                color: MyColors.primaryColor,
              ),
              itemCount: 5,
              itemSize: 10.45,
              direction: Axis.horizontal,
            ),
            const SizedBox(
              height: 8,
            )
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final List<CurrentBookEntity> currentReadingList =
        FakeData.currentReadingList;
    final List<BookEntity> myWishListBooks = FakeData.myWishlistBook;
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(46),
          child: AppBarWidget(),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTitleWidget(themeData),
              _buildCurrentReadingBookListWidget(currentReadingList, themeData),
              _buildTitleAndSeeMoreWidget(themeData),
              _buildMyWishlistWidget(myWishListBooks, themeData),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ));
  }
}
