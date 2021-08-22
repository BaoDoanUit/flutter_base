import 'package:flutter/material.dart';
import 'package:flutter_base/packages.dart';
import 'login.vm.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return MVVM<LoginPageVM>(
      view: (_, __) => _LoginPageView(),
      viewModel: LoginPageVM(),
    );
  }
}

class _LoginPageView extends StatelessView<LoginPageVM> {
  const _LoginPageView({Key? key}) : super(key: key);

  Widget render(BuildContext context, LoginPageVM vm) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(),
            backgroundColor: Colors.white,
            body: Container(
              child: TextButton(
                onPressed: vm.loginButton_onTap,
                child: Text('Login'),
              ),
            )));
  }
}
