import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:max_way/data/models/all_foods_model.dart';
import 'package:max_way/utils/app_colors.dart';
import 'package:max_way/widgets/item.dart';
import 'package:scrollable_list_tabview/scrollable_list_tabview.dart';

class TabBarWidget extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          height: 700.h,
          child: ScrollableListTabView(
            tabHeight: 58,
            bodyAnimationDuration: const Duration(milliseconds: 150),
            tabAnimationCurve: Curves.bounceIn,
            tabAnimationDuration: const Duration(milliseconds: 200),
            tabs: [
              ScrollableListTab(
                  tab: const ListTab(label: Text('Pitsa'),activeBackgroundColor: AppColor.cf1B301,inactiveBackgroundColor: Colors.white),
                  body: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: AllFoods.pizzas.length,
                    itemBuilder: (_, index) {
                      var item = AllFoods.pizzas[index];
                      return ItemWidget(image: item.image, price: item.price, name: item.name);
                    }
                  )),
              ScrollableListTab(
                  tab: const ListTab(label: Text('Burger'),activeBackgroundColor: AppColor.cf1B301,inactiveBackgroundColor: Colors.white),
                  body: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: AllFoods.burgers.length,
                    itemBuilder: (_, index) {
                      var item = AllFoods.burgers[index];
                      return ItemWidget(image: item.image, price: item.price, name: item.name);
                    }
                  )),
              ScrollableListTab(
                  tab: const ListTab(label: Text('Kombo'),activeBackgroundColor: AppColor.cf1B301,inactiveBackgroundColor: Colors.white),
                  body: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: AllFoods.kombos.length,
                    itemBuilder: (_, index) {
                      var item = AllFoods.kombos[index];
                      return ItemWidget(image: item.image, price: item.price, name: item.name);
                    }
                  )),
              ScrollableListTab(
                  tab: const ListTab(label: Text('Drink'),activeBackgroundColor: AppColor.cf1B301,inactiveBackgroundColor: Colors.white),
                  body: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: AllFoods.drinks.length,
                    itemBuilder: (_, index) {
                      var item = AllFoods.drinks[index];
                      return ItemWidget(image: item.image, price: item.price, name: item.name);
                    }
                  )),
            ],
          ),
        ),
    ],);
  }

  @override
  double get maxExtent => 999;

  @override
  double get minExtent => 100;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}
