import 'package:flutter/material.dart';
import 'package:nomi/core/app_export.dart';
import 'package:nomi/presentation/passwordresetconfirmation_screen/passwordresetconfirmation_screen.dart';
import 'package:nomi/widgets/custom_elevated_button.dart';
import 'package:otp_pin_field/otp_pin_field.dart';

class ResetscreenScreen extends StatelessWidget {
  ResetscreenScreen({Key? key}) : super(key: key);

  final _otpPinFieldController = GlobalKey<OtpPinFieldState>();

  @override
  Widget build(BuildContext context) {

    var mediaQuery = MediaQuery.of(context);

    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              leading: IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Colors.grey.shade300
                      )
                  ),
                  icon: Icon(Icons.arrow_back_ios_new, color: Colors.black, size: 20,)
              ),
            ),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 15.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Check your email",
                          style: theme.textTheme.titleLarge)),
                  SizedBox(height: 10.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          width: mediaQuery.size.width,
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "We sent a reset link to ",
                                    style:
                                        CustomTextStyles.titleMediumff989898),
                                TextSpan(
                                    text:
                                        "contact@dscode...com\n",
                                    style: CustomTextStyles.titleMediumff545454
                                        .copyWith(height: 1.25)),
                                TextSpan(
                                    text:
                                    "enter 5 digit code that mentioned in the email",
                                    style: CustomTextStyles.titleMediumff989898
                                        .copyWith(height: 1.25))
                              ]),
                              textAlign: TextAlign.left))),
                  SizedBox(height: 34.v),
                  OtpPinField(
                      key: _otpPinFieldController,
                      autoFillEnable: false,
                      textInputAction: TextInputAction.send,
                      onSubmit: (text) {},
                      onChange: (text) {},
                      onCodeChanged: (code) {},
                      otpPinFieldStyle: const OtpPinFieldStyle(
                        defaultFieldBackgroundColor: Colors.white,
                        activeFieldBorderColor: Color(0xff648DDB),
                        defaultFieldBorderColor:
                        Color(0xffE1E1E1),
                        activeFieldBackgroundColor: Colors.white,
                        filledFieldBackgroundColor: Colors.white,
                        filledFieldBorderColor:
                        Color(0xff648DDB),
                      ),
                      maxLength: 5,
                      cursorColor: Color(0xff648DDB),
                      upperChild: Column(
                        children: [
                          SizedBox(
                            height: mediaQuery.size.height * 0.01,
                          )
                        ],
                      ),
                      cursorWidth: 2,
                      mainAxisAlignment: MainAxisAlignment.center,
                      otpPinFieldDecoration: OtpPinFieldDecoration
                          .defaultPinBoxDecoration),
                  SizedBox(height: 26.v),
                  CustomElevatedButton(
                      text: "Verify Code",
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => PasswordresetconfirmationScreen(),));
                      },
                      buttonStyle: CustomButtonStyles.fillPrimaryTL12),
                  SizedBox(height: 38.v),
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "Haven’t got the email yet?",
                            style: CustomTextStyles.titleMediumff989898),
                        TextSpan(text: " "),
                        TextSpan(
                            text: "Resend email",
                            style: CustomTextStyles.titleMediumff55f3ba
                                .copyWith(decoration: TextDecoration.underline))
                      ]),
                      textAlign: TextAlign.left),
                  SizedBox(height: 5.v)
                ]))));
  }
}
