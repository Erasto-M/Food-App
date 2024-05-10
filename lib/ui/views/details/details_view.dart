import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:intl/intl.dart';
import 'package:my_stacked_app2/ui/common/ui_helpers.dart';
import 'package:my_stacked_app2/ui/views/details/details_view.form.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'details_viewmodel.dart';

@FormView(
  fields: [
    FormTextField(name: "DetailsSearchField"),
    FormTextField(name: "DetailsFilterField"),
  ],
)
class DetailsView extends StackedView<DetailsViewModel> with $DetailsView {
  DetailsView({
    Key? key,
    required this.imageUrl,
    required this.foodDescription,
    required this.category,
    required this.deliveryCost,
    required this.deliveryTime,
    required this.foodName,
    required this.foodPrice,
    required this.rating,
  }) : super(key: key);
  final String imageUrl;
  final String foodName;
  final String foodPrice;
  final String foodDescription;
  final String deliveryTime;
  final String deliveryCost;
  final String rating;
  final String category;

  @override
  Widget builder(
    BuildContext context,
    DetailsViewModel viewModel,
    Widget? child,
  ) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 248, 19, 2),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          height: MediaQuery.of(context).size.height / 1.2,
          decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              )),
          child: SingleChildScrollView(
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
                        image: DecorationImage(
                            image: AssetImage('assets/profile.png')),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
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
                                controller: detailsSearchFieldController,
                                focusNode: detailsSearchFieldFocusNode,
                                keyboardType: TextInputType.text,
                                decoration: const InputDecoration(
                                    hintText: "Search Food",
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
                        color: const Color.fromARGB(242, 124, 106, 3),
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

                verticalSpaceSmall,
                Container(
                  height: MediaQuery.of(context).size.height / 3.5,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 3.5,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(imageUrl),
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Positioned(
                          top: 0,
                          right: 0,
                          child: IconButton(
                            icon: Icon(
                              Icons.favorite_border,
                              size: 25,
                              color: Colors.grey.shade700,
                            ),
                            onPressed: () {},
                          )),
                    ],
                  ),
                ),
                verticalSpaceSmall,
                Row(
                  children: [
                    Text(
                      foodName,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        RatingBar.builder(
                            minRating: 1,
                            initialRating: double.parse(rating),
                            allowHalfRating: true,
                            ignoreGestures: true,
                            direction: Axis.horizontal,
                            itemSize: 20,
                            itemPadding:
                                const EdgeInsets.symmetric(horizontal: 0.1),
                            itemCount: 5,
                            itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 5,
                                ),
                            onRatingUpdate: (rating) {}),
                        horizontalSpaceTiny,
                        Text(rating),
                        const Text("(Reviews)")
                      ],
                    ),
                  ],
                ),
                verticalSpaceTiny,
                Row(
                  children: [
                    Text(
                      "\$ ${foodPrice}",
                      style: const TextStyle(
                          color: Color.fromARGB(255, 248, 19, 2),
                          fontSize: 20,
                          fontWeight: FontWeight.normal),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Container(
                          height: 18,
                          width: 18,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(242, 124, 106, 3),
                          ),
                          child: const Center(
                            child: Text("+",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                        horizontalSpaceTiny,
                        const Text("1",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        horizontalSpaceTiny,
                        Container(
                          height: 18,
                          width: 18,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(242, 124, 106, 3),
                          ),
                          child: const Center(
                            child: Text("-",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                        horizontalSpaceTiny,
                      ],
                    )
                  ],
                ),
                Text(
                  "Description.....",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade700),
                ),
                verticalSpaceTiny,
                Text(
                  foodDescription,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey.shade700),
                ),
                verticalSpaceSmall,
                //delivery time row
                Row(
                  children: [
                    const Text("Delivery Time :",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700)),
                    horizontalSpaceTiny,
                    Icon(
                      Icons.timer,
                      color: Colors.grey.shade700,
                      size: 20,
                    ),
                    horizontalSpaceTiny,
                    Text(
                      deliveryTime,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey.shade700),
                    ),
                  ],
                ),
                verticalSpaceTiny,
                Row(
                  children: [
                    const Text("Delivery Cost :",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700)),
                    horizontalSpaceTiny,
                    Icon(
                      Icons.money,
                      color: Colors.grey.shade700,
                      size: 20,
                    ),
                    horizontalSpaceTiny,
                    Text(
                      deliveryCost,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Color.fromARGB(255, 248, 19, 2)),
                    ),
                  ],
                )

                // rating bar

                // rating barR
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          margin:
              const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 20),
          padding: const EdgeInsets.all(10),
          height: 60,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              //total price row
              const Row(
                children: [
                  Text(
                    "Total Price :",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                  ),
                  horizontalSpaceTiny,
                  Text(
                    "\$ 5.00",
                    style: TextStyle(
                      color: Color.fromARGB(255, 248, 19, 2),
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              //add cart container
              const Spacer(),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(242, 124, 106, 3),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Row(
                    children: [
                      Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                        size: 20,
                      ),
                      horizontalSpaceTiny,
                      Text(
                        "Add to Cart",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  DetailsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      DetailsViewModel();
  @override
  void onViewModelReady(DetailsViewModel viewModel) {
    syncFormWithViewModel(viewModel);
  }
}
