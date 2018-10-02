import 'dart:async';

import 'package:flutter_splash_screen/Constants.dart';
import 'package:flutter_splash_screen/presenter/base_presenter.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class SplashContract extends BaseContract {
  void goToNextScreen(bool shouldLogin);
}

class SplashPresenter extends BasePresenter<SplashContract> {
  SplashPresenter(BaseContract contractView) {
    this.view = contractView;
  }

  void fetchSomething() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final _isHaveData = prefs.getString(Constants.sp_have_data) ?? "";

    //TODO Call API from server and do sth
    await new Future.delayed(const Duration(seconds: 2));

    if (_isHaveData.isEmpty) {
      await prefs.setString(Constants.sp_have_data, "just login");
      view.goToNextScreen(true);
    } else {
      view.goToNextScreen(false);
    }
  }
}
