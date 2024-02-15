import 'package:flutter/material.dart';
import 'package:nomi/core/app_export.dart';
import 'package:nomi/presentation/newpasswordconfirmationscreen_screen/newpasswordconfirmationscreen_screen.dart';
import 'package:nomi/presentation/passwordresetconfirmation_screen/passwordresetconfirmation_screen.dart';
import 'package:nomi/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:nomi/widgets/app_bar/custom_app_bar.dart';
import 'package:nomi/widgets/custom_elevated_button.dart';
import 'package:nomi/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class NewpasswordscreenScreen extends StatefulWidget {
  NewpasswordscreenScreen({Key? key}) : super(key: key);

  @override
  State<NewpasswordscreenScreen> createState() => _NewpasswordscreenScreenState();
}

class _NewpasswordscreenScreenState extends State<NewpasswordscreenScreen> {
  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool isShowPassword=false;
  bool isShowPasswordConfirm=false;

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
                                  Text("Set a new password",
                                      style: theme.textTheme.titleLarge),
                                  SizedBox(height: 9.v),
                                  Container(
                                      width: 348.h,
                                      margin: EdgeInsets.only(right: 29.h),
                                      child: Text(
                                          "Create a new password. Ensure it differs from\nprevious ones for security",
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles
                                              .titleMediumGray50003Medium)),
                                  SizedBox(height: 35.v),
                                  Text("Password",
                                      style:
                                          CustomTextStyles.titleMediumGray900),
                                  SizedBox(height: 7.v),
                                  CustomTextFormField(
                                      controller: passwordController,
                                      hintText: "Enter your new password",
                                      textInputType:
                                          TextInputType.visiblePassword,
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
                                      hintStyle: TextStyle(
                                          color: Color(0xffB3B3B3)
                                      ),
                                      textStyle: TextStyle(color: Colors.black,),
                                      suffixConstraints: BoxConstraints(maxHeight: 56.v),
                                      obscureText: isShowPassword,
                                      contentPadding: EdgeInsets.only(
                                          left: 21.h, top: 15.v, bottom: 15.v)),
                                  SizedBox(height: 15.v),
                                  Text("Confirm Password",
                                      style:
                                          CustomTextStyles.titleMediumGray900),
                                  SizedBox(height: 8.v),
                                  CustomTextFormField(
                                      controller: confirmPasswordController,
                                      hintText: "Re-enter password",
                                      textInputAction: TextInputAction.done,
                                      textInputType:
                                          TextInputType.visiblePassword,
                                      suffix: IconButton(
                                        onPressed: () {
                                          if(isShowPasswordConfirm == true) {
                                            isShowPasswordConfirm = false;
                                          }
                                          else {
                                            isShowPasswordConfirm = true;
                                          }
                                          setState(() {

                                          });
                                        },
                                        icon: isShowPasswordConfirm
                                            ?Icon(Icons.visibility_off, color: Color(0xffE1E1E1),size: 25,)
                                            :Icon(Icons.visibility, color: Color(0xffE1E1E1),size: 25,),
                                      ),
                                      hintStyle: TextStyle(color: Color(0xffB3B3B3)),
                                      suffixConstraints: BoxConstraints(maxHeight: 56.v),
                                      obscureText: isShowPasswordConfirm,
                                      textStyle: TextStyle(color: Colors.black,),
                                      contentPadding: EdgeInsets.only(
                                          left: 21.h, top: 15.v, bottom: 15.v)),
                                  SizedBox(height: 26.v),
                                  CustomElevatedButton(
                                      text: "Update Password",
                                      onPressed: (){
                                        Navigator
                                            .push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => NewpasswordconfirmationscreenScreen(),
                                            )
                                        );
                                      },
                                      buttonStyle:
                                          CustomButtonStyles.fillPrimaryTL12),
                                  SizedBox(height: 5.v)
                                ]
                            )
                        )
                    )
                )
            )
        )
    );
  }
}
