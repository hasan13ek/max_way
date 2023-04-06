import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:max_way/blocs/max_way_event.dart';
import 'package:max_way/blocs/max_way_state.dart';
import 'package:max_way/data/models/food_model.dart';
import 'package:max_way/data/repositories/app_repository.dart';
import 'package:max_way/data/service/get_it.dart';

class MaxWayBloc extends Bloc<MaxWayEvent, MaxWayState> {
  MaxWayBloc() : super(Initial()) {
    on<AddToCartFood>(addToCartFood);
    on<FetchAllFoods>(fetchAllFoods);
  }

  addToCartFood(AddToCartFood event, Emitter<MaxWayState> emit) async {
    emit(LoadInProgress());
    await getIt.get<AppRepository>().addToCart(foodModel: event.foodModel);
    emit(LoadInSuccess());
  }

  fetchAllFoods(FetchAllFoods event, Emitter<MaxWayState> emit) async {
    emit(LoadInProgressFetch());
    List<FoodModel> foods = await getIt.get<AppRepository>().getAllFoods();
    if (foods.isNotEmpty) {
      emit(LoadInSuccessFetch(foods: foods));
    } else {
      emit(LoadInFailureFetch(errorText: 'hali ovaqat yuq'));
    }
  }
}
