import 'package:my_stacked_app2/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:my_stacked_app2/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:my_stacked_app2/ui/views/home/home_view.dart';
import 'package:my_stacked_app2/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:my_stacked_app2/ui/views/login/login_view.dart';
import 'package:my_stacked_app2/ui/views/register/register_view.dart';
import 'package:my_stacked_app2/services/auth_service.dart';
import 'package:my_stacked_app2/ui/views/profile/profile_view.dart';
import 'package:my_stacked_app2/ui/views/notifications/notifications_view.dart';
import 'package:my_stacked_app2/ui/views/add_food/add_food_view.dart';
import 'package:my_stacked_app2/services/dashboard_service.dart';
import 'package:my_stacked_app2/services/firebasecloud_service.dart';
import 'package:my_stacked_app2/ui/views/details/details_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: RegisterView),
    MaterialRoute(page: ProfileView),
    MaterialRoute(page: NotificationsView),
    MaterialRoute(page: AddFoodView),
    MaterialRoute(page: DetailsView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: AuthService),
    LazySingleton(classType: DashboardService),
    LazySingleton(classType: FirebasecloudService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
