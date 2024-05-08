import 'package:my_stacked_app2/app/app.bottomsheets.dart';
import 'package:my_stacked_app2/app/app.dialogs.dart';
import 'package:my_stacked_app2/app/app.locator.dart';
import 'package:my_stacked_app2/ui/common/app_strings.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final _dialogService = locator<DialogService>();
  final _bottomSheetService = locator<BottomSheetService>();

  int currentIndex = 0;
  get currentIndexValue => currentIndex;
  selectedIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  final List<String> _categoriesList = [
    'All',
    "Pizza",
    "Soups",
    "Burger",
    "Bread",
    "Other",
  ];
  List<String> get categoriesList => _categoriesList;
}
