import 'package:book_explore_and_sale_app/common/constants/constants.dart';
import 'package:book_explore_and_sale_app/common/theme/colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../models/models.dart';

class PosterWidget extends StatefulWidget {
  final List<PosterEntity> posters;
  const PosterWidget({super.key, required this.posters});

  @override
  State<PosterWidget> createState() => _PosterWidgetState();
}

class _PosterWidgetState extends State<PosterWidget> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
            itemCount: widget.posters.length,
            itemBuilder: (context, index, realIndex) {
              final poster = widget.posters[index];
              return _Poster(poster: poster);
            },
            options: CarouselOptions(
                enableInfiniteScroll: true,
                reverse: false,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                height: 150,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentPage = index;
                  });
                },
                viewportFraction: 1,
                aspectRatio: 2,
                autoPlayCurve: Curves.fastOutSlowIn,
                autoPlay: true)),
        const SizedBox(
          height: 14,
        ),
        AnimatedSmoothIndicator(
          axisDirection: Axis.horizontal,
          activeIndex: currentPage,
          count: widget.posters.length,
          effect: const ExpandingDotsEffect(
              expansionFactor: 8,
              spacing: 4,
              radius: 10,
              dotWidth: 8,
              dotHeight: 8,
              paintStyle: PaintingStyle.fill,
              strokeWidth: 1.5,
              dotColor: MyExclusiveColors.inActiveDotIndicatorColor,
              activeDotColor: MyColors.primaryColor),
        ),
      ],
    );
  }
}

class _Poster extends StatelessWidget {
  final PosterEntity poster;

  const _Poster({required this.poster});
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            child: Image.asset(
              poster.path,
              fit: BoxFit.cover,
              height: 150.h,
              width: 350.w,
            ),
          ),
          Positioned(
              left: 8.w,
              top: 14.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    poster.title,
                    style: themeData.textTheme.headline6!.copyWith(
                        fontWeight: FontWeight.w600, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  Container(
                    width: 62.w,
                    height: 26.h,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Colors.white),
                    child: Text('Explore',
                        style: themeData.textTheme.subtitle2!.apply(
                            color: MyExclusiveColors.posterButtonTextColor)),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
