import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:my_stacked_app2/Models/food_details_model.dart';
import 'package:my_stacked_app2/ui/common/ui_helpers.dart';
import 'package:my_stacked_app2/ui/views/add_food/add_food_view.form.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'add_food_viewmodel.dart';

@FormView(fields: [
  FormTextField(name: 'name'),
  FormTextField(name: 'price'),
  FormTextField(name: 'description'),
  FormTextField(name: 'rating'),
  FormTextField(name: 'deliveryCost'),
  FormTextField(name: 'quantity'),
  FormTextField(name: "deliveryTime"),
  FormTextField(name: 'category'),
])
class AddFoodView extends StackedView<AddFoodViewModel> with $AddFoodView {
  const AddFoodView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AddFoodViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 248, 19, 2),
        title: const Text(
          "Add Food Item",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 5),
        child: SingleChildScrollView(
          child: Column(
            children: [
              verticalSpaceMedium,
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      controller: nameController,
                      decoration: InputDecoration(
                        hintText: "Food Name",
                        prefixIcon: const Icon(Icons.food_bank),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    verticalSpaceSmall,
                    //category drop down menu
                    TextFormField(
                      readOnly: true,
                      controller: categoryController,
                      decoration: InputDecoration(
                        hintText: "Category ",
                        suffixIcon: IconButton(
                          icon: const Icon(Icons.arrow_drop_down),
                          onPressed: () {
                            viewModel.showCategoriesList(
                              context,
                              categoryController,
                            );
                          },
                        ),
                        prefixIcon: const Icon(Icons.category),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    verticalSpaceSmall,
                    TextFormField(
                      controller: priceController,
                      decoration: InputDecoration(
                        hintText: "Price ",
                        prefixIcon: const Icon(Icons.money),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    verticalSpaceSmall,
                    TextFormField(
                      controller: descriptionController,
                      decoration: InputDecoration(
                        hintText: "Description",
                        prefixIcon: const Icon(Icons.description),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    verticalSpaceSmall,
                    TextFormField(
                      controller: quantityController,
                      decoration: InputDecoration(
                        hintText: "Quantity",
                        prefixIcon: const Icon(Icons.add_shopping_cart),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    verticalSpaceSmall,
                    TextFormField(
                      controller: deliveryCostController,
                      decoration: InputDecoration(
                        hintText: "Delivery Cost",
                        prefixIcon: const Icon(Icons.delivery_dining),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    verticalSpaceSmall,
                    //dilivery time
                    TextFormField(
                      controller: deliveryTimeController,
                      readOnly: true,
                      onTap: () {
                        viewModel.selectDeliveryTime(
                            context, deliveryTimeController);
                      },
                      decoration: InputDecoration(
                        hintText: "Delivery Time",
                        prefixIcon: const Icon(Icons.timer),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),

                    verticalSpaceSmall,
                    //rate food item

                    TextFormField(
                      controller: ratingController,
                      decoration: InputDecoration(
                        hintText: "Rating",
                        prefixIcon: const Icon(
                          Icons.star,
                          color: Colors.orange,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    // pick food image from gallery or camera
                    verticalSpaceSmall,
                    // clickable image placeholder
                    const Center(
                        child: Text(
                      "Add Food Image",
                      style: TextStyle(fontSize: 18),
                    )),
                    verticalSpaceTiny,
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.camera_alt,
                          size: 50,
                        ),
                      ),
                    ),
                    verticalSpaceMedium,
                    viewModel.isBusy
                        ? const SpinKitChasingDots(
                            size: 70,
                            color: Color.fromARGB(255, 248, 19, 2),
                          )
                        : InkWell(
                            onTap: () {
                              viewModel.addFoodDetails(
                                FoodDetailsModel(
                                  category: categoryController.text,
                                  name: nameController.text,
                                  imageUrl: '',
                                  price: priceController.text,
                                  description: descriptionController.text,
                                  rating: ratingController.text,
                                  deliveryTime: deliveryTimeController.text,
                                  deliveryCost: deliveryCostController.text,
                                  quantity: quantityController.text,
                                ),
                              );
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 50),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: const Center(
                                child: Center(
                                  child: Text(
                                    "Submit Food",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                    verticalSpaceMedium,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  AddFoodViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AddFoodViewModel();
  @override
  void onViewModelReady(AddFoodViewModel viewModel) {
    syncFormWithViewModel(viewModel);
  }
}
