import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AgeController extends GetxController {
  final selectedDate = DateTime.now().obs;
  final age = ''.obs;

  void pickDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (pickedDate != null) {
      selectedDate.value = pickedDate;
      calculateAge();
    }
  }

  void calculateAge() {
    final now = DateTime.now();
    final difference = now.difference(selectedDate.value);
    int years = difference.inDays ~/ 365;
    int months = (difference.inDays % 365) ~/ 30;
    int days = (difference.inDays % 365) % 30;

    age.value = "$years years, $months months, $days days";
  }
}
