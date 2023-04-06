import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


// ignore: must_be_immutable
class ItemCartWidget extends StatelessWidget {
   ItemCartWidget({Key? key,required this.image,required this.price,required this.name}) : super(key: key);
  String name;
  String image;
  num price;
  @override
  Widget build(BuildContext context) {
    return 
      Container(
        padding: EdgeInsets.only(left: 20.r,top: 16.r),
        margin: EdgeInsets.all(6.r),
      width: 345.w,
      height: 170.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: const Color(0xff979797).withOpacity(0.18),width: 1.8)
      ),
        child: Row(
          children: [
            Container(
              width: 124.w,
              height: 124.h,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(image))
              ),
            ),
            Column(
              children: [
                Text(name,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18.sp),),
                SizedBox(height: 10.h,),
                Text('''Горячая закуска с митболами\nиз говядины, томатами,\nмоцареллой и соусом чипотле''',style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w400,color: Colors.grey),),
                SizedBox(height: 14.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("$price UZS",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18.sp),),
                    SizedBox(width: 38.w,),
                  ],
                )
              ],
            )
          ],
        ),
    );
  }
}
