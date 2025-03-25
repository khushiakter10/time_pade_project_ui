import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:anytimetp_app/features/hy_pert_mart/presentation/previouse_order_screen.dart';
import 'package:anytimetp_app/features/hy_pert_mart/presentation/top_brands_screen.dart';
import 'package:anytimetp_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../gen/assets.gen.dart';
import '../home/presentation/home_screen.dart';
import '../hy_pert_mart/presentation/hyper_mart_home_screen.dart';

class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({super.key});

  @override
  State<NavigationBarScreen> createState() => _NavigationBarScreenState();
}

class _NavigationBarScreenState extends State<NavigationBarScreen> {
  final _pageController = PageController();
  final _controller = NotchBottomBarController(index: 0);

  final List<Widget> _pages = [
    const HyperMartHomeScreen(),
    const PreviouseOrderScreen(),
    const TopBrandsScreen(),
    const HomeScreen(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _pages,
        onPageChanged: (index) {
          setState(() {
          });
        },
      ),
      bottomNavigationBar: AnimatedNotchBottomBar(
        notchBottomBarController: _controller,
        color: Colors.white,
        showLabel: true,
        kIconSize: 24,
        kBottomRadius: 20,
        bottomBarItems: [
          BottomBarItem(
            inActiveItem:  Icon(Icons.home,color: AppColors.cC5C5C5,size: 24.sp,),
            activeItem:   Icon(Icons.home,color: AppColors.hyPer,size: 24.sp),
          ),
          BottomBarItem(
            inActiveItem:Image.asset(Assets.icons.lovePng.path,height: 24.h,color: AppColors.cC5C5C5,),
            activeItem: Image.asset(Assets.icons.lovePng.path, color: AppColors.hyPer),
            //itemLabel: "Search",
          ),
          const BottomBarItem(
            inActiveItem: Icon(Icons.shopping_cart, color: AppColors.cC5C5C5,),
            activeItem: Icon(Icons.shopping_cart, color: AppColors.hyPer),

          ),
          const BottomBarItem(
            inActiveItem: Icon(Icons.settings,  color: AppColors.cC5C5C5),
            activeItem: Icon(Icons.settings, color: AppColors.hyPer),
          ),
        ],
        onTap: (index) {
          setState(() {
          });
          _pageController.jumpToPage(index);
        },
      ),

    );
  }
}
