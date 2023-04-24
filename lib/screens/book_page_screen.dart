import 'package:book_explore_and_sale_app/common/constants/constants.dart';
import 'package:book_explore_and_sale_app/common/theme/colors.dart';
import 'package:book_explore_and_sale_app/common/utils/utils_file.dart';
import 'package:book_explore_and_sale_app/gen/assets.gen.dart';
import 'package:book_explore_and_sale_app/models/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookPageScreen extends StatelessWidget {
  final BookEntity book;
  const BookPageScreen({super.key, required this.book});

  PreferredSize _buildCustomAppBar(BuildContext context, ThemeData themeData) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(46),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(34, 10, 32, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: SvgPicture.asset(Assets.images.icons.back.path,
                    width: 24.w, height: 24.w),
              ),
              Container(
                height: 26,
                width: 86,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    color: MyColors.primaryVariantColor,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Text(
                  '+ Add to wishlist',
                  style: themeData.textTheme.button,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPosterWidget() {
    return CachedNetworkImage(
      imageUrl: book.poster,
      height: 212.h,
      fit: BoxFit.cover,
      width: 348.w,
    );
  }

  Widget _buildMainInfoWidget(ThemeData themeData) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(50.w)),
            child: CachedNetworkImage(
              imageUrl: book.authorImageUrl,
              fit: BoxFit.cover,
              height: 48.w,
              width: 48.w,
            )),
        const SizedBox(
          width: 12,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                book.title,
                style: themeData.textTheme.headline4!
                    .copyWith(fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 4.h,
              ),
              Text(
                'By ${book.author}',
                style:
                    themeData.textTheme.bodyText2!.apply(color: Colors.black),
              )
            ],
          ),
        ),
        Text(
          '\$${book.price}0',
          style: themeData.textTheme.headline4!.copyWith(
              fontWeight: FontWeight.w700, color: MyColors.primaryColor),
        )
      ],
    );
  }

  Widget _buildStarAndReadBookWidget(ThemeData themeData) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RatingBarIndicator(
          rating: book.star,
          itemBuilder: (context, index) => const Icon(
            Icons.star,
            color: MyColors.primaryColor,
          ),
          itemCount: 5,
          itemSize: 15.8,
          direction: Axis.horizontal,
        ),
        Text(
          ' | ${book.numberOfRead.separateByComma} Reads',
          style: themeData.textTheme.subtitle2!.copyWith(fontSize: 12),
        ),
        const SizedBox(
          width: 50,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return Scaffold(
      appBar: _buildCustomAppBar(context, themeData),
      body: Padding(
        padding: EdgeInsets.fromLTRB(
            MyDimens.bodyMargin, 31, MyDimens.bodyMargin, 0),
        child: Column(children: [
          _buildPosterWidget(),
          const SizedBox(
            height: 22,
          ),
          _buildMainInfoWidget(themeData),
          const SizedBox(
            height: 17,
          ),
          _buildStarAndReadBookWidget(themeData)
        ]),
      ),
    );
  }
}
