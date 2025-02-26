import 'package:fruit_app/features/order_list_feature/meal_model.dart';

abstract class MealStates {}

class InitialMealState extends MealStates {}
class LoadingMealState extends MealStates {}
class GetSuccessMealState extends MealStates {
  final List<MealModel> meals;

  GetSuccessMealState({required this.meals});
}
class ErrorMealState extends MealStates {
  final String errMsg;

  ErrorMealState({required this.errMsg});
}