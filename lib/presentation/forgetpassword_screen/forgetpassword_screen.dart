import 'package:flutter/material.dart';
import 'package:nomi/core/app_export.dart';
import 'package:nomi/presentation/resetscreen_screen/resetscreen_screen.dart';
import 'package:nomi/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:nomi/widgets/app_bar/custom_app_bar.dart';
import 'package:nomi/widgets/custom_elevated_button.dart';
import 'package:nomi/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ForgetpasswordScreen extends StatelessWidget {
  ForgetpasswordScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
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
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 25.h, vertical: 16.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Forgot password",
                                      style: theme.textTheme.titleLarge),
                                  SizedBox(height: 12.v),
                                  Text(
                                      "Please enter your email to reset the password",
                                      style: CustomTextStyles
                                          .titleMediumGray50003),
                                  SizedBox(height: 28.v),
                                  Text("Your Email",
                                      style:
                                          CustomTextStyles.titleMediumGray900),
                                  SizedBox(height: 8.v),
                                  CustomTextFormField(
                                      controller: emailController,
                                      hintText: "Enter your email",
                                      hintStyle: TextStyle(color: Colors.grey.shade400),
                                      textStyle: TextStyle(color: Colors.black),
                                      textInputAction: TextInputAction.done,
                                      textInputType: TextInputType.emailAddress
                                  ),
                                  SizedBox(height: 26.v),
                                  CustomElevatedButton(
                                      text: "Reset Password",
                                      onPressed: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => ResetscreenScreen(),));
                                      },
                                      buttonStyle:
                                          CustomButtonStyles.fillPrimaryTL12
                                  ),
                                  SizedBox(height: 5.v)
                                ])))))));
  }
}
