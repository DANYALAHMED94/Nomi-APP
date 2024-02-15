import 'package:flutter/material.dart';
import 'package:nomi/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Splash Screen",
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "LoginScreen",
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "ForgetPassword",
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "ResetScreen",
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "PasswordResetConfirmation",
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "NewPasswordScreen",
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "NewPasswordConfirmationScreen",
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "TransScriptScreen",
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "HomeScreenThree",
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "NewGoals",
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "CurrentGoals",
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "QuickNote",
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "ChatSelection",
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "HistoryThree",
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "HistoryTwo",
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "History",
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Calendar",
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "MoodOne",
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "MoodTwo",
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "MyDayOne",
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "MyDay",
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "History One",
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "SettingScreen",
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "EditProfile",
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "ProfileScreen",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                screenTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF888888),
          ),
        ],
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
