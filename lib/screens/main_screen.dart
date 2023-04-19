import 'package:book_explore_and_sale_app/common/constants/dimens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
     
            SvgPicture.asset('assets/images/icons/menu.svg',width: 24.w,height: 24.w)
               
           ,
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
               child: SvgPicture.asset('assets/images/icons/search.svg',width: 24.w,height: 24.w)
                // child: ImageIcon(
                //   const AssetImage('assets/images/icons/search.png'),
                //   size: 28.sp,
                //   color: MyColors.secondaryColor,
                // ),
              ),
              const SizedBox(
                width: 23,
              ),
             SvgPicture.asset('assets/images/icons/scan.svg',width: 28.w,height: 28.w,),
              const SizedBox(
                width: 8,
              ),
              SvgPicture.asset('assets/images/icons/notification.svg',width: 24.w,height: 24.w,),
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
