import 'package:book_explore_and_sale_app/common/constants/dimens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../common/theme/theme.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  PreferredSize _buildCustomAppBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(46),
      child: SafeArea(
          child: Padding(
        padding: EdgeInsets.fromLTRB(
            MyDimens.bodyMargin, 10, MyDimens.bodyMargin, 0),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ImageIcon(
                const AssetImage('assets/images/icons/menu.png'),
                size: 28.sp,
                color: MyExclusiveColors.iconColor,
              ),
              const SizedBox(
                width: 13,
              ),
              Container(
                width: 200.w,
                height: 36.h,
                alignment: Alignment.centerRight,
                padding: EdgeInsets.only(right: 12.w),
                decoration: BoxDecoration(
                  color: MyExclusiveColors.searchBarColor,
                  borderRadius: BorderRadius.all(Radius.circular(15.w)),
                ),
                child: ImageIcon(
                  const AssetImage('assets/images/icons/search.png'),
                  size: 28.sp,
                  color: MyColors.secondaryColor,
                ),
              ),
              const SizedBox(
                width: 25,
              ),
              ImageIcon(
                const AssetImage('assets/images/icons/scan.png'),
                size: 28.sp,
                color: MyExclusiveColors.iconColor,
              ),
              const SizedBox(
                width: 4,
              ),
              Stack(
                children: [
                  ImageIcon(
                    const AssetImage('assets/images/icons/notification.png'),
                    size: 28.sp,
                    color: MyColors.primaryVariantColor,
                  ),
                  Positioned(
                      right: 6,
                      top: 6,
                      child: Container(
                        width: 7.w,
                        height: 7.w,
                        decoration: const BoxDecoration(
                            color: MyColors.primaryColor,
                            shape: BoxShape.circle),
                      ))
                ],
              ),
            ]),
      )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildCustomAppBar(),
    );
  }
}
