import 'package:book_explore_and_sale_app/common/constants/constants.dart';
import 'package:book_explore_and_sale_app/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../theme/theme.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding:
          EdgeInsets.fromLTRB(MyDimens.bodyMargin, 10, MyDimens.bodyMargin, 0),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(Assets.images.icons.menu.path,
                width: 24.w, height: 24.w),
            const SizedBox(
              width: 13,
            ),
            Container(
                width: 200.w,
                height: 36.w,
                alignment: Alignment.centerRight,
                padding: EdgeInsets.only(right: 12.w),
                decoration: BoxDecoration(
                  color: MyExclusiveColors.searchBarColor,
                  borderRadius: BorderRadius.all(Radius.circular(15.w)),
                ),
                child: SvgPicture.asset(Assets.images.icons.search.path,
                    width: 24.w, height: 24.w)),
            const SizedBox(
              width: 23,
            ),
            SvgPicture.asset(
              Assets.images.icons.scan.path,
              width: 28.w,
              height: 28.w,
            ),
            const SizedBox(
              width: 8,
            ),
            SvgPicture.asset(
              Assets.images.icons.notification.path,
              width: 24.w,
              height: 24.w,
            ),
          ]),
    ));
  }
}
