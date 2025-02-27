import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_app/core/helper/extensions.dart';
import 'package:fruit_app/core/widgets/Custom_Button_Widget.dart';
import 'package:fruit_app/features/order_list_feature/cubit/meal_cubit.dart';
import 'package:fruit_app/features/order_list_feature/cubit/meal_states.dart';
import '../../../core/apis/dio_helper.dart';
import '../../../core/constants/app_text_styles.dart';
import 'widgets/custom_bottom_sheet.dart';
import 'widgets/custom_pp_bar.dart';
import 'widgets/item_widget.dart';

class OrderListFeatureScreen extends StatelessWidget {
  const OrderListFeatureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: CustomAppBar(),
      body: BlocProvider(
        create: (context) {
          return MealCubit(
            DioHelper(
              dio: Dio(),
            ),
          );
        },
        child: BlocConsumer<MealCubit, MealStates>(
            listener: (context, state) {},
            builder: (context, state) {
              var cubit = BlocProvider.of<MealCubit>(context);
      
              if (state is LoadingMealState) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is GetSuccessMealState) {
                return Column(
                  children: [
                    CustomAppBar(
                      topPositioned: context.screenHeight() * 0.04,
                      leftPositioned: context.screenWidth() * 0.04,
                      bottomPositioned: 0,
                      titletopPositioned: context.screenHeight() * 0.09,
                      titleleftPositioned: 0,
                      titlerightpositioned: 0,
                      title: 'My Basket',
                    ),
                    Expanded(
                      
                      child: cubit.meals.isEmpty ? Center(child: Text('No meals founded',style: AppTextStyles.size20mainTextColorW400,),)
                      
                      : ListView.builder(
                        itemCount: cubit.meals.length,
                        itemBuilder: (context, index) {
                          return ItemWidget(
                            mealModel: cubit.meals[index],
                          );
                        },
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 10),
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Total',
                                style: AppTextStyles.size16BalckW500,
                              ),
                              const Text(
                                '\$ 60,000',
                                style: AppTextStyles.size24mainTextColorW500,
                              ),
                            ],
                          ),
                          CustomPrimaryButtonWidget(
                            context: context,
                            onTap: () {
                              showPayCard(context);
                            },
                            width: 199,
                            height: 56,
                            text: 'Checkout',
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              } else if (state is ErrorMealState) {
                return Center(child: Text('Error: ${state.errMsg.toString()}'));
              }
              return Container();
            }),
      ),
    );
  }
}
