import 'package:age_calc/controller/age_controller.dart';
import 'package:age_calc/controller/theme_controller.dart';
import 'package:age_calc/widgets/card_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AgeCalcScreen extends StatelessWidget {
  const AgeCalcScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeController controller = Get.put(ThemeController());
    AgeController ageController = Get.put(AgeController());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Age Calulator',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  controller.changeTheme();
                },
                icon: Obx(
                  () => Icon(
                    controller.themeIcon.value,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => CustomCardWidgets(
                age: ageController.age.value,
                pickDate: () {
                  ageController.pickDate(context);
                },
                regenerateDate: () {
                  ageController.calculateAge();
                },
              ))
        ],
      ),
    );
  }
}
