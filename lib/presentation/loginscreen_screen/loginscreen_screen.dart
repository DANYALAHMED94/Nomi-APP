import 'package:flutter/material.dart';
import 'package:nomi/core/app_export.dart';
import 'package:nomi/presentation/MainScreenManager/MainScreenManager.dart';
import 'package:nomi/presentation/forgetpassword_screen/forgetpassword_screen.dart';
import 'package:nomi/presentation/homescreen_page/homescreen_page.dart';
import 'package:nomi/widgets/custom_elevated_button.dart';
import 'package:nomi/widgets/custom_outlined_button.dart';
import 'package:nomi/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginscreenScreen extends StatefulWidget {
  LoginscreenScreen({Key? key}) : super(key: key);

  @override
  State<LoginscreenScreen> createState() => _LoginscreenScreenState();
}

class _LoginscreenScreenState extends State<LoginscreenScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool isShowPassword=false;

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: mediaQuery.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 25.h, vertical: 48.v),
                            child: Column(children: [
                              Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Container(
                                      height: 65.v,
                                      width: mediaQuery.size.width,
                                      // color: Colors.red,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text("Log in",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  // color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xff55F4BB)
                                              )
                                          ),
                                          Divider(
                                              color: theme
                                                  .colorScheme.primary,
                                            thickness: 2,
                                            endIndent: mediaQuery.size.width*0.25,
                                            indent: mediaQuery.size.width*0.25,
                                          )
                                        ],
                                      ),
                                    )
                                  ]),
                              SizedBox(height: 68.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Your Email",
                                      style:
                                          CustomTextStyles.titleMediumGray900)),
                              SizedBox(height: 8.v),
                              _buildEmail(context),
                              SizedBox(height: 16.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Password",
                                      style:
                                          CustomTextStyles.titleMediumGray900)),
                              SizedBox(height: 7.v),
                              _buildPassword(context),
                              SizedBox(height: 13.v),
                              _buildWrongPassword(context),
                              SizedBox(height: 16.v),
                              _buildContinue(context),
                              SizedBox(height: 33.v),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: 9.v, bottom: 8.v),
                                        child: SizedBox(
                                            width: 98.h,
                                            child: Divider(
                                                color: appTheme.gray30001,
                                              thickness: 2,
                                            )
                                        )
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(left: 16.h, bottom: 8.v),
                                        child: Text("Or",
                                            style: CustomTextStyles
                                                .titleMediumGray30001)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: 9.v, bottom: 8.v),
                                        child: SizedBox(
                                            width: 115.h,
                                            child: Divider(
                                                color: appTheme.gray30001,
                                                thickness: 2,
                                                indent: 17.h)))
                                  ]),
                              SizedBox(height: 34.v),
                              _buildLoginWithApple(context),
                              SizedBox(height: 16.v),
                              _buildLoginWithGoogle(context),
                              SizedBox(height: 37.v),
                              RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "Don’t have an account?",
                                        style: CustomTextStyles
                                            .titleMediumff989898),
                                    TextSpan(text: " "),
                                    TextSpan(
                                        text: "Sign up",
                                        style: CustomTextStyles
                                            .titleMediumff648ddb)
                                  ]),
                                  textAlign: TextAlign.left),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(

        controller: emailController,
        hintText: "contact@dscodetech.com",
        textStyle: TextStyle(color: Colors.black,),
        hintStyle: TextStyle(color: Color(0xffB3B3B3)),
        textInputType: TextInputType.emailAddress);
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
        controller: passwordController,
        textStyle: TextStyle(color: Colors.black,),
        textInputAction: TextInputAction.done,
        suffix: IconButton(
            onPressed: () {
              if(isShowPassword == true) {
                isShowPassword = false;
              }
              else {
                isShowPassword = true;
              }
              setState(() {

              });
            },
            icon: isShowPassword
                ?Icon(Icons.visibility_off, color: Color(0xffE1E1E1),size: 25,)
                :Icon(Icons.visibility, color: Color(0xffE1E1E1),size: 25,),
        ),
        hintStyle: TextStyle(color: Color(0xffB3B3B3)),
        suffixConstraints: BoxConstraints(maxHeight: 56.v),
        obscureText: isShowPassword
    );
  }

  /// Section Widget
  Widget _buildWrongPassword(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text("", style: CustomTextStyles.titleMediumBluegray100),
      GestureDetector(
          onTap: () {
            Navigator
                .push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ForgetpasswordScreen(),
                )
            );
          },
          child: Text("Forgot password?",
              style: CustomTextStyles.titleMediumPrimary))
    ]);
  }

  /// Section Widget
  Widget _buildContinue(BuildContext context) {
    return CustomElevatedButton(
        text: "Continue",
      onPressed: () {
          Navigator
              .pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => MainScreensManager(),
              )
          );
      },
    );
  }

  /// Section Widget
  Widget _buildLoginWithApple(BuildContext context) {
    return CustomOutlinedButton(
        text: "Login with Apple",
        leftIcon: Container(
            margin: EdgeInsets.only(
              right: 15
            ),
            child: CustomImageView(
                imagePath: ImageConstant.imgPngwing1,
                height: 23.v,
                width: 18.h
            )
        )
    );
  }

  /// Section Widget
  Widget _buildLoginWithGoogle(BuildContext context) {
    return CustomOutlinedButton(
        text: "Login with Google",
        leftIcon: Container(
            margin: EdgeInsets.only(
              right: 15
            ),
            child: CustomImageView(
                imagePath: ImageConstant.imgPngwing2,
                height: 24.adaptSize,
                width: 24.adaptSize
            )
        )
    );
  }
}
