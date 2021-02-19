import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';
import 'package:zodiac/ui/views/login/login_view_model.dart';
import '../../../constants.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screen = MediaQuery.of(context).size.height;
    final double screenW = MediaQuery.of(context).size.width;

    return ViewModelBuilder<LoginViewModel>.reactive(
      builder: (context, model, child) => SafeArea(
        child: Container(
          decoration: BoxDecoration(gradient: gradientBg),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: screen * 0.2,
                    ),
                    SvgPicture.asset(
                      'assets/logo.svg',
                      width: 180,
                    ),
                    Theme(
                      data: new ThemeData(
                        primaryColor: Color.fromRGBO(255, 255, 255, 0.2),
                      ),
                      child: TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            enabledBorder: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.mail,
                              color: Colors.white,
                            ),
                          )),
                    ),
                    Theme(
                      data: new ThemeData(
                        primaryColor: Color.fromRGBO(255, 255, 255, 0.2),
                      ),
                      child: TextField(
                          obscureText: true,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            enabledBorder: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.white,
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: model.navigateToForgotPassword,
                      child: Text(
                        'Forgot password?',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    FlatButton(
                      minWidth: screenW * 0.8,
                      color: Colors.white,
                      onPressed: model.navigateToHome,
                      child: Text(
                        'LOG IN',
                        style: TextStyle(color: primary),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account?",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('REGISTER',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      viewModelBuilder: () => LoginViewModel(),
    );
  }
}
