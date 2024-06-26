import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_stacked_app2/Models/food_details_model.dart';
import 'package:my_stacked_app2/ui/common/ui_helpers.dart';
import 'package:my_stacked_app2/ui/views/details/details_view.dart';
import 'package:my_stacked_app2/ui/views/home/home_view.form.dart';
import 'package:my_stacked_app2/ui/views/home/home_viewmodel.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:intl/intl.dart';

class HomeScreenWidget extends StatelessWidget with $HomeView {
  const HomeScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    HomeViewModel homeViewModel = HomeViewModel();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: MediaQuery.of(context).size.height / 1.2,
      decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // custom appbar row
          Row(
            children: [
              const Icon(Icons.menu),
              const Spacer(),
              Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  image:
                      DecorationImage(image: AssetImage('assets/profile.png')),
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
          // food corner text
          const Text(
            "Food Corner",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          // order your favorite food text
          const Text(
            "Order your favorite food!",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          // search bar & filter
          Row(
            children: [
              // search container
              Expanded(
                child: Container(
                  height: 50,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.search,
                        size: 25,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          controller: searchFieldController,
                          focusNode: searchFieldFocusNode,
                          decoration: const InputDecoration(
                              hintText: "Search",
                              hintStyle: TextStyle(color: Colors.black),
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              )),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              // filter container
              Container(
                height: 50,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 186, 233, 15),
                ),
                child: const Center(
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          //Categories row
          Container(
            height: MediaQuery.of(context).size.height / 17,
            child: ListView.builder(
                itemCount: homeViewModel.categoriesList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 10),
                    width: 100,
                    decoration: BoxDecoration(
                      color: index == 0
                          ? const Color.fromARGB(255, 186, 233, 15)
                          : Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        homeViewModel.categoriesList[index],
                        style: TextStyle(
                            color: index == 0 ? Colors.white : Colors.black),
                      ),
                    ),
                  );
                }),
          ),

          verticalSpaceSmall,
          const Text(
            "Top Food Items",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Expanded(
              child: StreamBuilder(
            stream: homeViewModel.getAllFoods(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                    child: SpinKitSpinningLines(
                  color: Colors.black,
                  size: 80,
                ));
              } else if (!snapshot.hasData) {
                return const Text("No Foods found");
              } else if (snapshot.hasError) {
                return Text("Error: ${snapshot.error}");
              } else {
                final data = snapshot.data;
                return GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                    ),
                    itemCount: data.docs.length,
                    itemBuilder: (context, index) {
                      final doc = data.docs[index];
                      final docData = doc.data() as Map<String, dynamic>;
                      FoodDetailsModel foodModel =
                          FoodDetailsModel.fromMap(docData);
                      double price = double.parse(foodModel.price);
                      double rating = double.parse(foodModel.rating);
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => DetailsView(
                                category: foodModel.category,
                                imageUrl: foodModel.imageUrl,
                                deliveryCost: foodModel.deliveryCost,
                                deliveryTime: foodModel.deliveryTime,
                                foodName: foodModel.name,
                                foodDescription: foodModel.description,
                                foodPrice: foodModel.price,
                                rating: foodModel.rating,
                              ),
                            ),
                          );
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height / 2,
                          width: MediaQuery.of(context).size.width / 2.2,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 248, 19, 2),
                          ),
                          child: Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height / 8,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    image: DecorationImage(
                                        image: NetworkImage(foodModel.imageUrl),
                                        fit: BoxFit.cover),
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(25),
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                      bottomRight: Radius.circular(25),
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 8),
                                child: Row(
                                  children: [
                                    // name and rating column
                                    Column(
                                      children: [
                                        Text(
                                          foodModel.name,
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.star,
                                              color: Colors.orange,
                                            ),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            Text(
                                              rating.toString(),
                                              style: const TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    const Spacer(),
                                    // cost column
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            Text(
                                              NumberFormat.currency(
                                                      symbol: '\$',
                                                      decimalDigits: 0)
                                                  .format(price),
                                              style: const TextStyle(
                                                  color: Colors.white),
                                            )
                                          ],
                                        ),
                                        const Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    });
              }
            },
          )),
        ],
      ),
    );
  }
}
