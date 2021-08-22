import 'package:flutter/widgets.dart';
import 'package:flutter_base/infrastructure/auth.repo.dart';
import 'package:flutter_base/infrastructure/auth/models/auth.pb.dart';
import 'package:flutter_base/packages.dart';

class LoginPageVM extends ViewModel {
  late AuthRepository _authRepository;

  final pageController = PageController(initialPage: 0);
  final usernameTextfield = TextEditingController();
  final passwordTextfield = TextEditingController();

  @override
  void init() {
    _authRepository = context.fetch<AuthRepository>();
  }

  @override
  void onBuild() {}

  void nextPage() {
    pageController.nextPage(
        duration: Duration(microseconds: 200), curve: Curves.easeIn);
  }

  void loginButton_onTap() async {
    UserInfo info = new UserInfo();
    info.username = usernameTextfield.text.trim();
    info.password = passwordTextfield.text.trim();

    final reply = await _authRepository.signIn(info);
    if (reply.response.state == ResponseState.SUCCESS)
      nextPage();
    else {}
  }
}
