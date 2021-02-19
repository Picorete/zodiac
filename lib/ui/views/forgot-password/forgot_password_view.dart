import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';
import 'package:zodiac/ui/views/forgot-password/forgot_password_view_model.dart';
import '../../../constants.dart';

class ForgotPasswordView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screen = MediaQuery.of(context).size.height;
    final double screenW = MediaQuery.of(context).size.width;

    return ViewModelBuilder<ForgotPasswordViewModel>.reactive(
      builder: (context, model, child) => SafeArea(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topLeft, colors: [
            Color.fromRGBO(255, 148, 130, 1),
            Color.fromRGBO(125, 119, 255, 1)
          ])),
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
                      height: screen * 0.1,
                    ),
                    Container(
                      padding: EdgeInsets.all(30),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.4),
                                blurRadius: 5,
                                spreadRadius: 2)
                          ]),
                      child: SvgPicture.asset(
                        'assets/forgot_password.svg',
                        width: 180,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'FORGOT YOUR PASSWORD?',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Do not worry ! Enter your email and we will send you a link to reset your password",
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Theme(
                      data: new ThemeData(
                        primaryColor: Color.fromRGBO(255, 255, 255, 0.2),
                      ),
                      child: TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            hintText: 'Email',
                            hintStyle: TextStyle(color: Colors.white),
                            enabledBorder: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.mail,
                              color: Colors.white,
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    FlatButton(
                      minWidth: screenW * 0.8,
                      color: Colors.white,
                      onPressed: () => {},
                      child: Text(
                        'SEND ME',
                        style: TextStyle(color: primary),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      viewModelBuilder: () => ForgotPasswordViewModel(),
    );
  }
}
