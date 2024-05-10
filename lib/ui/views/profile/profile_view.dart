import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:my_stacked_app2/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';

import 'profile_viewmodel.dart';

class ProfileView extends StackedView<ProfileViewModel> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ProfileViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Text(
            "Profile",
            style: TextStyle(
              color: Colors.orange.shade700,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Profile Image & Name & Email Container
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                width: MediaQuery.of(context).size.width,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    //Profile Image
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                          image: AssetImage("assets/profile.png"),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                    ),
                    // Profile Name & Email
                    const SizedBox(width: 20),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text("John Doe",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            )),
                        SizedBox(height: 5),
                        Text(
                          'johndoe@gmail.com',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              //View Profile
              verticalSpaceMedium,
              Row(
                children: [
                  Text(
                    "View Your Profile",
                    style: TextStyle(
                        color: Colors.orange.shade700,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.edit,
                        color: Colors.orange.shade700,
                      )),
                ],
              ),
              verticalSpaceSmall,
              const Text(
                "Contact Details",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              const InkWell(
                child: ListTile(
                  title: Row(
                    children: [
                      Text("Name:"),
                      horizontalSpaceMedium,
                      Text('John Doe')
                    ],
                  ),
                  leading: Icon(Icons.person),
                ),
              ),
              const InkWell(
                child: ListTile(
                  title: Row(
                    children: [
                      Text("Phone:"),
                      horizontalSpaceTiny,
                      Text('0743737443')
                    ],
                  ),
                  leading: Icon(Icons.phone_enabled),
                ),
              ),
              const InkWell(
                child: ListTile(
                  title: Row(
                    children: [
                      Text("Email:"),
                      horizontalSpaceMedium,
                      Text('johndoe@gmail.com')
                    ],
                  ),
                  leading: Icon(Icons.person),
                ),
              ),
              verticalSpaceTiny,
              const Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              verticalSpaceTiny,
              const Text(
                "Social Media Accounts",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              InkWell(
                onTap: () {},
                child: const ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Facebook"),
                      verticalSpaceTiny,
                      //url
                      Text(
                        'https://www.facebook.com/johndoe',
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                  leading: Icon(
                    Icons.facebook,
                    color: Colors.blue,
                    size: 20,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: const ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Twitter"),
                      verticalSpaceTiny,
                      //url
                      Text(
                        'https://www.twitter.com/johndoe',
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                  leading: Icon(
                    Icons.twenty_one_mp_outlined,
                    color: Colors.blue,
                    size: 20,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: const ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Instagram"),
                      verticalSpaceTiny,
                      //url
                      Text(
                        'https://www.instagram.com/johndoe',
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                  leading: Icon(
                    Icons.wechat,
                    color: Colors.pink,
                    size: 20,
                  ),
                ),
              ),
              //linkedin
              InkWell(
                onTap: () {},
                child: const ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("LinkedIn"),
                      verticalSpaceTiny,
                      //url
                      Text(
                        'https://www.linkedin.com/johndoe',
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                  leading: Icon(
                    Icons.link,
                    color: Colors.blue,
                    size: 20,
                  ),
                ),
              ),
              // Help
              verticalSpaceTiny,
              const Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              verticalSpaceTiny,
              //logout container
              viewModel.isBusy
                  ? const Center(
                      child: SpinKitSpinningLines(
                        color: Colors.black,
                        size: 50,
                      ),
                    )
                  : InkWell(
                      onTap: () {
                        viewModel.logout(context);
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black87),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: const Center(
                          child: Row(
                            children: [
                              Text(
                                "Logout",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              horizontalSpaceSmall,
                              Icon(
                                Icons.logout,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
              verticalSpaceMedium,
            ],
          ),
        ),
      ),
    );
  }

  @override
  ProfileViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ProfileViewModel();
}
