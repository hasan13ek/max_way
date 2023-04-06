import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:max_way/screens/cart_screen.dart';
import 'package:max_way/utils/app_colors.dart';
import 'package:max_way/widgets/container_widget.dart';
import 'package:max_way/widgets/image_container.dart';
import 'package:max_way/widgets/tabbar.dart';
import 'package:max_way/widgets/text.dart';


class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarBrightness: Brightness.dark,
              statusBarIconBrightness: Brightness.dark,
              statusBarColor: Colors.white,
            ),
            pinned: true,
            expandedHeight: 0,
            elevation: 0,
            backgroundColor: Colors.white,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                 Text("Menyu",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400,color: Colors.black),),
                Text("Bolalar Uchun",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400,color: Colors.black),),
                Text("Filiallar",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400,color: Colors.black),)
              ],
            ),
            leading: Padding(padding: EdgeInsets.only(left: 4.w,),child: Image.asset('assets/images/app_logo/app_logo.png')),
            actions: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>CartScreen()));
                },
                child: Stack(children: [
                  Padding(padding: EdgeInsets.only(top: 18.r,right: 10.r),child:Image.asset('assets/images/cart.png',scale: 2,),),
                  Positioned(
                    left: 8.w,
                    top: 12.h,
                      child: Container(
                    width: 16.w,
                    height: 16.h,
                        decoration: const BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle
                        ),

                  )),
                  Positioned(
                    left: 11.w,
                    top: 15.h,
                      child: Container(
                    width: 10.w,
                    height: 10.h,
                        decoration: const BoxDecoration(
                            color: AppColor.cf1B301,
                            shape: BoxShape.circle
                        ),

                  )),
                  // Positioned(
                  //   left: 12.w,
                  //   top: 13.h,
                  //     child: Text('3',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800,fontSize: 12.sp),)),
                ],),
              ),
              GestureDetector(
                child: Image.asset('assets/images/drawer.png',scale: 2,),
              )
            ],
          ),
          SliverPadding(
              padding: EdgeInsets.only(top:14.r),
              sliver: SliverPersistentHeader(delegate: ImageContainer(), pinned: false,)),
          SliverPadding(padding: EdgeInsets.only(bottom:1.r),
          sliver: SliverPersistentHeader(delegate: TextWidget()),),
          SliverPadding(padding: EdgeInsets.only(top:64.r,left: 16.r,right: 16.r),
              sliver: SliverPersistentHeader(delegate: ContainerWidget(), pinned: true,)),
          SliverPadding(padding: EdgeInsets.only(top:64.r,left: 16.r,right: 16.r,),
              sliver: SliverPersistentHeader(delegate: TabBarWidget(), pinned: true,)),
        ],
      ),
    );
  }
}
