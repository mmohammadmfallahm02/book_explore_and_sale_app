import 'package:book_explore_and_sale_app/screens/main_screen/explore_screen.dart';
import 'package:book_explore_and_sale_app/screens/main_screen/my_library_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../common/theme/theme.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

const int myLibraryScreenIndex = 0;
const int exploreScreenIndex = 1;
const int cartScreenIndex = 2;
const int communityScreenIndex = 3;

class _MainScreenState extends State<MainScreen> {
  int selectedPageIndex = myLibraryScreenIndex;
  final List<int> _history = [];
  final GlobalKey<NavigatorState> _myLibraryScreenKey = GlobalKey();
  final GlobalKey<NavigatorState> _exploreScreenKey = GlobalKey();
  final GlobalKey<NavigatorState> _cartScreenKey = GlobalKey();
  final GlobalKey<NavigatorState> _communityScreenKey = GlobalKey();

  late final map = {
    myLibraryScreenIndex: _myLibraryScreenKey,
    exploreScreenIndex: _exploreScreenKey,
    cartScreenIndex: _cartScreenKey,
    communityScreenIndex: _communityScreenKey,
  };

  Widget _buildCustomBottomNav() {
    return _BottomNavigation(
      selectedIndex: selectedPageIndex,
      onTap: (index) {
        setState(() {
          _history.remove(selectedPageIndex);
          _history.add(selectedPageIndex);
          selectedPageIndex = index;
        });
      },
    );
  }

  Future<bool> _onWillPop() async {
    final NavigatorState currentSelectedPageNavigatorState =
        map[selectedPageIndex]!.currentState!;
    if (currentSelectedPageNavigatorState.canPop()) {
      currentSelectedPageNavigatorState.pop();
      return false;
    } else if (_history.isNotEmpty) {
      selectedPageIndex = _history.last;
      _history.removeLast();
      setState(() {});
      return false;
    }
    return true;
  }

  Widget _navigator(
      {required GlobalKey key, required int index, required Widget child}) {
    return key.currentState == null && selectedPageIndex != index
        ? const SizedBox()
        : Navigator(
            key: key,
            onGenerateRoute: (settings) => MaterialPageRoute(
                builder: (context) => Offstage(
                    offstage: selectedPageIndex != index, child: child)),
          );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
          // appBar: const PreferredSize(
          //   preferredSize: Size.fromHeight(46),
          //   child: AppBarWidget(),
          // ),
          bottomNavigationBar: _buildCustomBottomNav(),
          body: IndexedStack(
            index: selectedPageIndex,
            children: [
              _navigator(
                  child: const MyLibraryScreen(),
                  key: _myLibraryScreenKey,
                  index: myLibraryScreenIndex),
              _navigator(
                  child: const ExploreScreen(),
                  key: _exploreScreenKey,
                  index: exploreScreenIndex),
              _navigator(
                  child: const Scaffold(
                    body: Center(child: Text('cart')),
                  ),
                  key: _cartScreenKey,
                  index: cartScreenIndex),
              _navigator(
                  child: const Scaffold(
                    body: Center(child: Text('community')),
                  ),
                  key: _communityScreenKey,
                  index: communityScreenIndex),
            ],
          )),
    );
  }
}

class _BottomNavigation extends StatelessWidget {
  final Function(int index) onTap;
  final int selectedIndex;

  const _BottomNavigation({required this.onTap, required this.selectedIndex});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 20,
            offset: const Offset(0, 1),
            spreadRadius: 0)
      ]),
      height: 70.h,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        const SizedBox(
          width: 16,
        ),
        _BottomNavigationItem(
          iconFileName: 'library.svg',
          activeIconFileName: 'selected_library.svg',
          title: 'My Library',
          onTap: () {
            onTap(myLibraryScreenIndex);
          },
          isActive: myLibraryScreenIndex == selectedIndex,
        ),
        _BottomNavigationItem(
          iconFileName: 'explore.svg',
          activeIconFileName: 'selected_explore.svg',
          title: 'Explore',
          onTap: () {
            onTap(exploreScreenIndex);
          },
          isActive: exploreScreenIndex == selectedIndex,
        ),
        _BottomNavigationItem(
          iconFileName: 'cart.svg',
          activeIconFileName: 'selected_cart.svg',
          title: 'Cart',
          onTap: () {
            onTap(cartScreenIndex);
          },
          isActive: cartScreenIndex == selectedIndex,
        ),
        _BottomNavigationItem(
          iconFileName: 'community.svg',
          activeIconFileName: 'selected_community.svg',
          title: 'Community',
          onTap: () {
            onTap(communityScreenIndex);
          },
          isActive: communityScreenIndex == selectedIndex,
        ),
        const SizedBox(
          width: 16,
        )
      ]),
    );
  }
}

class _BottomNavigationItem extends StatelessWidget {
  final String iconFileName;
  final String activeIconFileName;
  final String title;
  final bool isActive;
  final Function() onTap;

  const _BottomNavigationItem(
      {required this.iconFileName,
      required this.activeIconFileName,
      required this.title,
      required this.onTap,
      required this.isActive});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(isActive
                ? 'assets/images/icons/$activeIconFileName'
                : 'assets/images/icons/$iconFileName'),
            const SizedBox(
              height: 4,
            ),
            Text(title,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: isActive
                      ? MyColors.primaryTextColor
                      : MyColors.secondaryTextColor,
                ))
          ],
        ),
      ),
    );
  }
}
