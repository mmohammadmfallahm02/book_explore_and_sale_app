import 'package:book_explore_and_sale_app/common/theme/colors.dart';
import 'package:book_explore_and_sale_app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookPageScreen extends StatelessWidget {
  const BookPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      appBar: PreferredSize(
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
      ),
    );
  }
}
