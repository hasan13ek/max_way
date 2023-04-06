import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:max_way/blocs/max_way_bloc.dart';
import 'package:max_way/blocs/max_way_event.dart';
import 'package:max_way/blocs/max_way_state.dart';
import 'package:max_way/data/models/food_model.dart';
import 'package:max_way/utils/app_colors.dart';
import 'package:max_way/widgets/global_button.dart';

// ignore: must_be_immutable
class ItemWidget extends StatelessWidget {
   ItemWidget({Key? key,required this.image,required this.price,required this.name}) : super(key: key);
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
                    FloatingActionButton(mini: true,onPressed: (){
                      showModalBottomSheet(context: context, builder: (context){
                        return BlocConsumer<MaxWayBloc, MaxWayState>(
                          builder: (context, state) {
                            return Container(
                              padding: EdgeInsets.only(bottom: 20.r,left: 20.r,right: 20.r),
                              width: double.infinity,
                              height: 400.h,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(42.r),
                                  topRight: Radius.circular(42.r),
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 10.h,),
                                  Padding(padding: EdgeInsets.only(left: 140.r),child:Text(name,style: TextStyle(fontSize: 24.sp),),),

                                  SizedBox(height: 40.h,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset(image,scale: 1.6,),
                                      Column(
                                        children: [
                                          Text('''Горячая закуска с митболами\nиз говядины, томатами,\nмоцареллой и соусом чипотле''',style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.w400,color: Colors.grey),),
                                          SizedBox(height: 20.h,),
                                          Text('$price UZS',style: TextStyle(fontSize: 24.sp,fontWeight: FontWeight.w700),)
                                        ],
                                      )
                                    ],
                                  ),
                                const  Expanded(child: SizedBox()),
                                  GlobalButton(isActive: true, buttonText: "Qo'shish", onTap: (){
                                    BlocProvider.of<MaxWayBloc>(context).add(AddToCartFood(foodModel: FoodModel(price: price, name: name, image: image, description: '''Горячая закуска с митболами\nиз говядины, томатами,\nмоцареллой и соусом чипотле'''),),);
                                  },)

                                ],
                              ),
                            );
                          },
                          listener: (context, state) {
                            if (state is LoadInSuccess) {
                              BlocProvider.of<MaxWayBloc>(context).add(FetchAllFoods());
                              Navigator.pop(context);
                            }

                          },
                        );
                      },
                        isScrollControlled: true,
                        enableDrag: true,
                        elevation: 7,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(52.0)),
                        backgroundColor: Colors.white,
                      );
                    },backgroundColor: AppColor.cf1B301,elevation: 0,child: const Icon(Icons.add),)
                  ],
                )
              ],
            )
          ],
        ),
    );
  }
}
