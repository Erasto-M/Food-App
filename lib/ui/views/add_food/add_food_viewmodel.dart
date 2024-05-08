import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_stacked_app2/Models/food_details_model.dart';
import 'package:my_stacked_app2/app/app.locator.dart';
import 'package:my_stacked_app2/services/dashboard_service.dart';
import 'package:my_stacked_app2/ui/views/add_food/add_food_view.form.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class AddFoodViewModel extends FormViewModel {
  final _navigationService = locator<NavigationService>();
  final _bottomSheetService = locator<BottomSheetService>();
  final _dialogService = locator<DialogService>();
  final _dashBoardService = locator<DashboardService>();

  // timepicker variable
  DateTime? time;

  // getter to get the time value
  get timeValue => time;

// method to handle time picker
  Future<void> selectDeliveryTime(
    BuildContext context,
    TextEditingController deliveryTimeController,
  ) async {
    // show time picker and get selected time
    TimeOfDay? selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    //if time is selected , update the time value and controller
    if (selectedTime != null) {
      // Convert time of day to DateTime
      DateTime selectedDateTime = DateTime(
        DateTime.now().year,
        DateTime.now().month,
        DateTime.now().day,
        selectedTime.hour,
        selectedTime.minute,
      );
      // update time value
      time = selectedDateTime;
      notifyListeners();
      // update the controller
      // ignore: use_build_context_synchronously
      DateFormat formatter = DateFormat('yyyy-MM-dd HH:mm');
      deliveryTimeController.text = formatter.format(selectedDateTime);
    }
  }

  //Setter to update the time value
  void updateTime(DateTime newTime) {
    time = newTime;
    notifyListeners();
  }

  // method to handle categories list
  final List<String> _categoriesList = [
    'All',
    "Pizza",
    "Soups",
    "Burger",
    "Bread",
    "Other",
  ];
  Future<void> showCategoriesList(
    BuildContext context,
    TextEditingController categoriesController,
  ) async {
    final selectedCategory = await showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return ListView.builder(
              itemCount: _categoriesList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    _categoriesList[index],
                  ),
                  onTap: () {
                    Navigator.of(context).pop(
                      _categoriesList[index],
                    );
                  },
                );
              });
        });
    if (selectedCategory != null) {
      categoriesController.text = selectedCategory;
      notifyListeners();
    }
  }

  // method to handle adding food details
  Future<void> addFoodDetails(FoodDetailsModel foodDetailsModel) async {
    setBusy(true);
    if (nameValue!.isEmpty ||
        nameValue! == '' ||
        categoryValue!.isEmpty ||
        categoryValue! == '' ||
        priceValue!.isEmpty ||
        priceValue! == '' ||
        descriptionValue!.isEmpty ||
        descriptionValue! == '' ||
        ratingValue!.isEmpty ||
        ratingValue! == '' ||
        deliveryTimeValue == null ||
        deliveryCostValue!.isEmpty ||
        deliveryCostValue! == '' ||
        quantityValue!.isEmpty ||
        quantityValue! == '') {
      await _dialogService.showDialog(
        title: 'Error',
        description: 'All fields are required',
      );
      setBusy(false);
      return;
    } else {
      await _dashBoardService.sendFoodDetailsToFirebase(
        foodName: nameValue!,
        foodCategory: categoryValue!,
        foodPrice: priceValue!,
        foodDescription: descriptionValue!,
        foodRating: ratingValue!,
        foodDeliveryTime: deliveryTimeValue.toString(),
        foodDeliveryCost: deliveryCostValue!,
        foodQuantity: quantityValue!,
        foodDetailsModel: foodDetailsModel,
      );
      notifyListeners();
    }
    setBusy(false);
  }
}
