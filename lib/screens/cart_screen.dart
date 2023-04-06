import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:max_way/blocs/max_way_bloc.dart';
import 'package:max_way/blocs/max_way_state.dart';
import 'package:max_way/widgets/item_cart.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: const Icon(Icons.arrow_back,color: Colors.black,)),
        backgroundColor: Colors.white,
        title: const Text('Cart Screen',style: TextStyle(color: Colors.black),),
      ),
      body: BlocBuilder<MaxWayBloc,MaxWayState>(builder: (context,state){
        if(state is LoadInProgressFetch){
          return const Center(child: CircularProgressIndicator(),);
        }
        else if(state is LoadInSuccessFetch){
          return SingleChildScrollView(
            child:Column(
              children: [
                ...List.generate(state.foods.length, (index) {
                  var item = state.foods[index];
                  return ItemCartWidget(image: item.image, price: item.price, name: item.name);
                })
              ],
            ) ,
          );


        }
        return const Text("Savat bo'sh");
      }),
    );
  }
}
