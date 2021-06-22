import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/ui/themes/colors.dart';
import 'sign_in_page.dart';
import 'sign_up_page.dart';

class RegisterLoginPage extends StatefulWidget {
  @override
  _RegisterLoginPageState createState() => _RegisterLoginPageState();
}

class _RegisterLoginPageState extends State<RegisterLoginPage> {
  String groupValue; //za segmented control (sta je selektovano)

  @override
  void initState() {
    groupValue = 'L';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Center(child: groupValue == 'L' ? SignInPage() : SignUpPage()),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                  child: Column(
                    children: [
                      Divider(
                        color: SECOND_WHITE_COLOR,
                      ),
                      Text(
                        groupValue == 'L'
                            ? 'Don’t have an account?'
                            : 'Have an account?',
                        style:
                            TextStyle(fontSize: 20, color: SECOND_WHITE_COLOR),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                            alignment: Alignment.centerLeft,
                            primary: Colors.transparent,
                            onSurface: Colors.blue),
                        onPressed: () {
                          groupValue = groupValue == 'L' ? 'R' : 'L';
                          if (mounted) {
                            setState(() {});
                          }
                        },
                        child: Text(groupValue == 'L' ? 'SIGN UP' : 'LOGIN',
                            style: TextStyle(
                                color: RED_PRIMARY_COLOR,
                                fontWeight: FontWeight.bold,
                                fontSize: 16)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
