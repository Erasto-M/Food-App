// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i10;
import 'package:flutter/material.dart';
import 'package:my_stacked_app2/ui/views/add_food/add_food_view.dart' as _i8;
import 'package:my_stacked_app2/ui/views/details/details_view.dart' as _i9;
import 'package:my_stacked_app2/ui/views/home/home_view.dart' as _i2;
import 'package:my_stacked_app2/ui/views/login/login_view.dart' as _i4;
import 'package:my_stacked_app2/ui/views/notifications/notifications_view.dart'
    as _i7;
import 'package:my_stacked_app2/ui/views/profile/profile_view.dart' as _i6;
import 'package:my_stacked_app2/ui/views/register/register_view.dart' as _i5;
import 'package:my_stacked_app2/ui/views/startup/startup_view.dart' as _i3;
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i11;

class Routes {
  static const homeView = '/home-view';

  static const startupView = '/startup-view';

  static const loginView = '/login-view';

  static const registerView = '/register-view';

  static const profileView = '/profile-view';

  static const notificationsView = '/notifications-view';

  static const addFoodView = '/add-food-view';

  static const detailsView = '/details-view';

  static const all = <String>{
    homeView,
    startupView,
    loginView,
    registerView,
    profileView,
    notificationsView,
    addFoodView,
    detailsView,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.homeView,
      page: _i2.HomeView,
    ),
    _i1.RouteDef(
      Routes.startupView,
      page: _i3.StartupView,
    ),
    _i1.RouteDef(
      Routes.loginView,
      page: _i4.LoginView,
    ),
    _i1.RouteDef(
      Routes.registerView,
      page: _i5.RegisterView,
    ),
    _i1.RouteDef(
      Routes.profileView,
      page: _i6.ProfileView,
    ),
    _i1.RouteDef(
      Routes.notificationsView,
      page: _i7.NotificationsView,
    ),
    _i1.RouteDef(
      Routes.addFoodView,
      page: _i8.AddFoodView,
    ),
    _i1.RouteDef(
      Routes.detailsView,
      page: _i9.DetailsView,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.HomeView: (data) {
      return _i10.MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.HomeView(),
        settings: data,
      );
    },
    _i3.StartupView: (data) {
      return _i10.MaterialPageRoute<dynamic>(
        builder: (context) => const _i3.StartupView(),
        settings: data,
      );
    },
    _i4.LoginView: (data) {
      return _i10.MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.LoginView(),
        settings: data,
      );
    },
    _i5.RegisterView: (data) {
      return _i10.MaterialPageRoute<dynamic>(
        builder: (context) => const _i5.RegisterView(),
        settings: data,
      );
    },
    _i6.ProfileView: (data) {
      return _i10.MaterialPageRoute<dynamic>(
        builder: (context) => const _i6.ProfileView(),
        settings: data,
      );
    },
    _i7.NotificationsView: (data) {
      return _i10.MaterialPageRoute<dynamic>(
        builder: (context) => const _i7.NotificationsView(),
        settings: data,
      );
    },
    _i8.AddFoodView: (data) {
      return _i10.MaterialPageRoute<dynamic>(
        builder: (context) => const _i8.AddFoodView(),
        settings: data,
      );
    },
    _i9.DetailsView: (data) {
      final args = data.getArgs<DetailsViewArguments>(nullOk: false);
      return _i10.MaterialPageRoute<dynamic>(
        builder: (context) => _i9.DetailsView(
            key: args.key,
            imageUrl: args.imageUrl,
            foodDescription: args.foodDescription,
            category: args.category,
            deliveryCost: args.deliveryCost,
            deliveryTime: args.deliveryTime,
            foodName: args.foodName,
            foodPrice: args.foodPrice,
            rating: args.rating),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class DetailsViewArguments {
  const DetailsViewArguments({
    this.key,
    required this.imageUrl,
    required this.foodDescription,
    required this.category,
    required this.deliveryCost,
    required this.deliveryTime,
    required this.foodName,
    required this.foodPrice,
    required this.rating,
  });

  final _i10.Key? key;

  final String imageUrl;

  final String foodDescription;

  final String category;

  final String deliveryCost;

  final String deliveryTime;

  final String foodName;

  final String foodPrice;

  final String rating;

  @override
  String toString() {
    return '{"key": "$key", "imageUrl": "$imageUrl", "foodDescription": "$foodDescription", "category": "$category", "deliveryCost": "$deliveryCost", "deliveryTime": "$deliveryTime", "foodName": "$foodName", "foodPrice": "$foodPrice", "rating": "$rating"}';
  }

  @override
  bool operator ==(covariant DetailsViewArguments other) {
    if (identical(this, other)) return true;
    return other.key == key &&
        other.imageUrl == imageUrl &&
        other.foodDescription == foodDescription &&
        other.category == category &&
        other.deliveryCost == deliveryCost &&
        other.deliveryTime == deliveryTime &&
        other.foodName == foodName &&
        other.foodPrice == foodPrice &&
        other.rating == rating;
  }

  @override
  int get hashCode {
    return key.hashCode ^
        imageUrl.hashCode ^
        foodDescription.hashCode ^
        category.hashCode ^
        deliveryCost.hashCode ^
        deliveryTime.hashCode ^
        foodName.hashCode ^
        foodPrice.hashCode ^
        rating.hashCode;
  }
}

extension NavigatorStateExtension on _i11.NavigationService {
  Future<dynamic> navigateToHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.loginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToRegisterView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.registerView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToProfileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.profileView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToNotificationsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.notificationsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToAddFoodView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.addFoodView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToDetailsView({
    _i10.Key? key,
    required String imageUrl,
    required String foodDescription,
    required String category,
    required String deliveryCost,
    required String deliveryTime,
    required String foodName,
    required String foodPrice,
    required String rating,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.detailsView,
        arguments: DetailsViewArguments(
            key: key,
            imageUrl: imageUrl,
            foodDescription: foodDescription,
            category: category,
            deliveryCost: deliveryCost,
            deliveryTime: deliveryTime,
            foodName: foodName,
            foodPrice: foodPrice,
            rating: rating),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithHomeView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.homeView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithStartupView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.startupView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithLoginView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.loginView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithRegisterView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.registerView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithProfileView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.profileView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithNotificationsView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.notificationsView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithAddFoodView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.addFoodView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithDetailsView({
    _i10.Key? key,
    required String imageUrl,
    required String foodDescription,
    required String category,
    required String deliveryCost,
    required String deliveryTime,
    required String foodName,
    required String foodPrice,
    required String rating,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.detailsView,
        arguments: DetailsViewArguments(
            key: key,
            imageUrl: imageUrl,
            foodDescription: foodDescription,
            category: category,
            deliveryCost: deliveryCost,
            deliveryTime: deliveryTime,
            foodName: foodName,
            foodPrice: foodPrice,
            rating: rating),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
