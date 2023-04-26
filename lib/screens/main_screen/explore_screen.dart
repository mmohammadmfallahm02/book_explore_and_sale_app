import 'package:book_explore_and_sale_app/common/constants/constants.dart';
import 'package:book_explore_and_sale_app/common/theme/colors.dart';
import 'package:book_explore_and_sale_app/models/models.dart';
import 'package:book_explore_and_sale_app/screens/book_page_screen.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../common/widgets/widgets.dart';
import '../../data/data.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final List<PosterEntity> posters = FakeData.posters;
    final List<String> categories = FakeData.categories;
    final List<BookEntity> books = FakeData.booksCategoryList;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(46),
        child: AppBarWidget(key: key),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 22,
            ),
            PosterWidget(posters: posters),
            CategoriesWidget(
              themeData: themeData,
              categories: categories,
              books: books,
            ),
          ],
        ),
      ),
    );
  }
}

class CategoriesWidget extends StatefulWidget {
  const CategoriesWidget({
    Key? key,
    required this.themeData,
    required this.categories,
    required this.books,
  }) : super(key: key);

  final ThemeData themeData;
  final List<String> categories;
  final List<BookEntity> books;

  @override
  State<CategoriesWidget> createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  int selectedCategoryIndex = 1;

  Widget _buildCategoriesTitleWidget() {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        MyDimens.bodyMargin,
        20,
        MyDimens.bodyMargin,
        6,
      ),
      child: Text(
        'Categories',
        style: widget.themeData.textTheme.headline4,
      ),
    );
  }

  Widget _buildCategoryListWidget() {
    return SizedBox(
      height: 20.h,
      child: ListView.builder(
          // physics: const ClampingScrollPhysics(),
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
    );
  }

  Widget _buildBookGridWidget() {
    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        padding: EdgeInsets.fromLTRB(
            MyDimens.bodyMargin, 18, MyDimens.bodyMargin, 0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 21,
            mainAxisSpacing: 17,
            childAspectRatio: 100.w / 185.h),
        itemCount: widget.books.length,
        itemBuilder: (context, index) {
          final book = widget.books[index];
          return _buildGridBookItemWidget(book);
        });
  }

  Widget _buildGridBookItemWidget(BookEntity book) {
    return InkWell(
      borderRadius: const BorderRadius.all(Radius.circular(5)),
      onTap: () {
        Navigator.of(context, rootNavigator: false).push(MaterialPageRoute(
            builder: (context) => BookPageScreen(
                  book: book,
                )));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(5)),
              child: CachedNetworkImage(
                imageUrl: book.imageUrl,
                fit: BoxFit.cover,
                height: 130.h,
                width: 100.h,
              )),
          const SizedBox(
            height: 2,
          ),
          Expanded(
            child: Text(
              book.title,
              style: widget.themeData.textTheme.subtitle1,
            ),
          ),
          Text(
            book.author,
            style: widget.themeData.textTheme.caption,
          ),
          _buildStarWidget(book),
        ],
      ),
    );
  }

  Widget _buildStarWidget(BookEntity book) {
    return RatingBarIndicator(
      rating: book.star,
      itemBuilder: (context, index) => const Icon(
        Icons.star,
        color: MyColors.primaryColor,
      ),
      itemCount: 5,
      itemSize: 10.45,
      direction: Axis.horizontal,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildCategoriesTitleWidget(),
        _buildCategoryListWidget(),
        _buildBookGridWidget()
      ],
    );
  }
}
