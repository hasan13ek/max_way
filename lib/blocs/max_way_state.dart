import 'package:max_way/data/models/food_model.dart';

abstract class MaxWayState{}

class Initial extends MaxWayState{}
class LoadInProgress extends MaxWayState{}
class LoadInSuccess extends MaxWayState{}
class LoadInFailure extends MaxWayState{}
///----------fetch foods state- ---------------------///


class LoadInProgressFetch extends MaxWayState{}
class LoadInSuccessFetch extends MaxWayState{
  List<FoodModel> foods;
  LoadInSuccessFetch({required this.foods});
}
class LoadInFailureFetch extends MaxWayState{
  String errorText;
  LoadInFailureFetch({required this.errorText});
}