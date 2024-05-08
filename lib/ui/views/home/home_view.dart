import 'package:flutter/material.dart';
import 'package:my_stacked_app2/Wigets/home_containerWidget.dart';
import 'package:my_stacked_app2/ui/views/add_food/add_food_view.dart';
import 'package:my_stacked_app2/ui/views/notifications/notifications_view.dart';
import 'package:my_stacked_app2/ui/views/profile/profile_view.dart';
import 'package:stacked/stacked.dart';
import 'package:my_stacked_app2/ui/common/app_colors.dart';
import 'package:my_stacked_app2/ui/common/ui_helpers.dart';
import 'package:stacked/stacked_annotations.dart';

import 'home_viewmodel.dart';

@FormView(fields: [FormTextField(name: "SearchField")])
class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 248, 19, 2),
        // body containing the selected screen in the bottom nav
        body: [
          const HomeScreenWidget(),
          const AddFoodView(),
          const NotificationsView(),
          const ProfileView(),
        ][viewModel.currentIndexValue],
        bottomNavigationBar: Container(
          margin: const EdgeInsets.only(left: 5, right: 5, bottom: 10, top: 10),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  offset: Offset(0, 3),
                  color: Colors.white,
                )
              ]),
          child: BottomNavigationBar(
            onTap: viewModel.selectedIndex,
            selectedItemColor: Colors.orange.shade700,
            currentIndex: viewModel.currentIndexValue,
            unselectedItemColor: Colors.black,
            showUnselectedLabels: true,
            backgroundColor: Colors.white,
            showSelectedLabels: true,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 20,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.add,
                  size: 20,
                ),
                label: 'Add Food Item',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications,
                  size: 20,
                ),
                label: 'Notifications',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  size: 20,
                ),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
