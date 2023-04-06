import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:max_way/utils/app_colors.dart';

class ContainerWidget extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Container(
      width: 168.w,
      height: 132.h,
      decoration: BoxDecoration(
          color: AppColor.cf1B301,
          borderRadius: BorderRadius.circular(12.r)
      ),
        child: Stack(
          children: [
            Padding(padding: EdgeInsets.only(top: 10.r,left: 10.r),child:Container(
              width:95.w,
              height: 40.h,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.23),
                  borderRadius: BorderRadius.circular(20.r)
              ),
              child: Center(child: Text('🔥 Yangi',style: TextStyle(color: Colors.white,fontSize: 14.sp,fontWeight: FontWeight.w500),),),
            ),),
           Positioned(
             left: 14.r,
             bottom: 10,
             child:Text("PIT\n  -SA",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 26.sp),),),
            Positioned(
              bottom: 0,
                right: 0,
                child:  Container(
                  width: 104.w,
                  height: 100.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(14.r)),
                      image: const DecorationImage(image: AssetImage('assets/images/img_1.png'),fit: BoxFit.contain)
                  ),
                ))

          ],
        ),

    ),
      Container(
      width: 168.w,
      height: 132.h,
      decoration: BoxDecoration(
          color: AppColor.c800A7A,
          borderRadius: BorderRadius.circular(12.r)
      ),
        child: Stack(
          children: [
            Padding(padding: EdgeInsets.only(top: 10.r,left: 10.r),child:Container(
              width:139.w,
              height: 40.h,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.23),
                  borderRadius: BorderRadius.circular(20.r)
              ),
              child: Center(child: Text("🚀 Ko'p sotilgan",style: TextStyle(color: Colors.white,fontSize: 14.sp,fontWeight: FontWeight.w500),),),
            ),),
           Positioned(
             left: 14.r,
             bottom: 10,
             child:Text("   KOM\n-BO",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 26.sp),),),
            Positioned(
              bottom: -18.r,
                right: -24.r,
                child:  Container(
                  width: 104.w,
                  height: 100.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(14.r)),
                      image: const DecorationImage(image: AssetImage('assets/images/kombo/image1.png'),fit: BoxFit.contain)
                  ),
                ))

          ],
        ),

    ),
      ],
    );

  }

  // late String title;
  @override
  double get maxExtent => 130;

  @override
  double get minExtent => 20;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}
