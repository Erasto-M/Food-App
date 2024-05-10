import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
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
  File? imageFile;
  get image => imageFile;
  String? imageUrl;
  get imageLink => imageUrl;

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
  Future<void> addFoodDetails({
    required foodDetailsModel,
    required String foodImageUrl,
  }) async {
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
        foodImageUrl: foodImageUrl!,
      );
      //clear all the textfields

      notifyListeners();
    }
    setBusy(false);
  }

  // Pick Image Method
  Future<void> pickImage() async {
    final pickedImage = await _dialogService.showConfirmationDialog(
      title: 'Pick Image',
      description: 'Choose an image from',
      confirmationTitle: 'Gallery',
      cancelTitle: 'Camera',
    );
    if (pickedImage?.confirmed == true) {
      await getImageFromGallery();
      notifyListeners();
    } else {
      await getImageFromCamera();
      notifyListeners();
    }
  }

  // get image from gallery function
  Future getImageFromGallery() async {
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    try {
      if (pickedImage != null) {
        imageFile = File(pickedImage.path);
        // send the image to firebase storange
        FirebaseStorage firebaseStorage = FirebaseStorage.instance;
        Reference reference = firebaseStorage
            .ref()
            .child('food_images/${DateTime.now().toString()}');
        UploadTask uploadTask = reference.putFile(
          File(pickedImage.path),
        );
        TaskSnapshot taskSnapshot = await uploadTask;
        // get downloadurl
        imageUrl = await taskSnapshot.ref.getDownloadURL();
        notifyListeners();
        print('Image Path: ${pickedImage.path}');
        print('Image Url: $imageUrl');
      } else {
        print('No Image Selected');
      }
    } catch (e) {
      print(e);
    }
  }

  //pick image from camera
  Future getImageFromCamera() async {
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    try {
      if (pickedImage != null) {
        imageFile = File(pickedImage.path);
        // send the image to firebase storange
        FirebaseStorage firebaseStorage = FirebaseStorage.instance;
        Reference reference = firebaseStorage
            .ref()
            .child('food_images/${DateTime.now().toString()}');
        UploadTask uploadTask = reference.putFile(File(pickedImage.path));
        TaskSnapshot taskSnapshot = await uploadTask;
        // get downloadurl
        imageUrl = await taskSnapshot.ref.getDownloadURL();
        notifyListeners();
        print('Image Path: ${pickedImage.path}');
        print('Image Url: $imageUrl');
      } else {
        print('No Image Selected');
      }
    } catch (e) {
      print(e);
    }
  }
}
