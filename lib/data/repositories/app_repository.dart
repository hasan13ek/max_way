import 'package:max_way/data/local_db/local_db.dart';
import 'package:max_way/data/models/food_model.dart';

class AppRepository{


  Future<FoodModel> addToCart({required FoodModel foodModel})=>LocalDatabase.insertFood(foodModel);

  Future<List<FoodModel>> getAllFoods()=>LocalDatabase.getAllFoods();

}