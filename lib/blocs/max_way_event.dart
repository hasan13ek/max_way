import 'package:max_way/data/models/food_model.dart';

abstract class MaxWayEvent{}


class AddToCartFood extends MaxWayEvent {
  FoodModel foodModel;
  AddToCartFood({required this.foodModel});
}

class FetchAllFoods extends MaxWayEvent{}