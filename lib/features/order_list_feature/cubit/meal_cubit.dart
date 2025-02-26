import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_app/core/apis/api_constants.dart';
import 'package:fruit_app/core/apis/dio_helper.dart';
import 'package:fruit_app/core/errors/exceptions.dart';
import 'package:fruit_app/features/order_list_feature/cubit/meal_states.dart';
import 'package:fruit_app/features/order_list_feature/meal_model.dart';

class MealCubit extends Cubit<MealStates> {
  MealCubit(this.dioHelper) : super(InitialMealState());

  DioHelper dioHelper;

  List<MealModel> meals = [];
  Future getMeals() async {
    try {
      emit(LoadingMealState());

      final response = await dioHelper.get(
          ApiConstants.baseURL + ApiConstants.listMealsEP,
          queryParmas: {'name': 'ahmed'});

      if (response['success'] == true) {
        meals.clear();
        for (var meal in response['data']) {
          meals.add(MealModel.fromJson(meal));
        }
      }

      emit(GetSuccessMealState(meals: meals));
    } on ServerExceptions catch (e) {
      emit(ErrorMealState(errMsg: e.errorModel.message));
      emit(ErrorMealState(errMsg: e.toString()));
    }
  }
}
