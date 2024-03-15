import 'package:stacked/stacked.dart';

class LoginViewModel extends BaseViewModel {
  int counter = 0;

  void updateTitle() {
    counter++;
    notifyListeners();
  }
}
