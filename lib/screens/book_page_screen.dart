import 'package:book_explore_and_sale_app/common/constants/constants.dart';
import 'package:book_explore_and_sale_app/common/theme/colors.dart';
import 'package:book_explore_and_sale_app/common/utils/utils.dart';

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
      floatingActionButton: SizedBox(
          height: 35.h,
          width: 149.w,
          child: FloatingActionButton.extended(
              shape: const BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              onPressed: () {},
              label: Row(
                children: [
                  const Text('Add to Cart'),
                  const SizedBox(
                    width: 8,
                  ),
                  SvgPicture.asset(
                    Assets.images.icons.cart.path,
                    width: 15,
                    height: 15,
                    color: Colors.white,
                  )
                ],
              ))),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: _buildCustomAppBar(context, themeData),
      body: Padding(
        padding: EdgeInsets.fromLTRB(
            MyDimens.bodyMargin, 31, MyDimens.bodyMargin, 0),
        child: Stack(
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              _buildPosterWidget(),
              const SizedBox(
                height: 22,
              ),
              _buildMainInfoWidget(themeData),
              const SizedBox(
                height: 17,
              ),
              _buildStarAndReadBookWidget(themeData),
              const SizedBox(
                height: 32,
              ),
              const DetailsBookItemWidget(),
              const SizedBox(
                height: 17,
              ),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children:const [
                       Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                        style: TextStyle(height: 1.5),
                      ),
                      SizedBox(
                        height: 130,
                      ),
                    ],
                  ),
                ),
              ),
            ]),
            Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: Container(
                  height: 141,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          colors: MyGradient.bookPageDetailsGradient,
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter)),
                ))
          ],
        ),
      ),
    );
  }
}

class DetailsBookItemWidget extends StatefulWidget {
  const DetailsBookItemWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<DetailsBookItemWidget> createState() => _DetailsBookItemWidgetState();
}

class _DetailsBookItemWidgetState extends State<DetailsBookItemWidget> {
  int selectedItemIndex = 0;

  Widget _buildListViewWidget(ThemeData themeData) {
    return SizedBox(
      height: 20,
      child: ListView.builder(
          itemCount: 3,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final List<String> list = ['About', 'Reviews', 'Author'];
            final String item = list[index];
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedItemIndex = index;
                });
              },
              child: Container(
                decoration: index == selectedItemIndex
                    ? const BoxDecoration(
                        border: Border(
                        bottom: BorderSide(
                            width: 2.5, color: MyColors.primaryColor),
                      ))
                    : null,
                padding: const EdgeInsets.only(left: 25, right: 20),
                child: Text(
                  item,
                  style: themeData.textTheme.headline5,
                ),
              ),
            );
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        const Divider(
          thickness: 2,
          color: MyExclusiveColors.searchBarColor,
          height: 0,
        ),
        _buildListViewWidget(themeData),
      ],
    );
  }
}
