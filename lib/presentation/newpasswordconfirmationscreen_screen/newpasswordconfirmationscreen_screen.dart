import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:nomi/core/app_export.dart';
import 'package:nomi/presentation/loginscreen_screen/loginscreen_screen.dart';
import '../../widgets/custom_elevated_button.dart';

class NewpasswordconfirmationscreenScreen extends StatefulWidget {
  const NewpasswordconfirmationscreenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<NewpasswordconfirmationscreenScreen> createState() => _NewpasswordconfirmationscreenScreenState();
}

class _NewpasswordconfirmationscreenScreenState extends State<NewpasswordconfirmationscreenScreen> {

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   Timer(Duration(seconds: 2), () {
  //     Navigator
  //         .pushReplacement(
  //         context,
  //         MaterialPageRoute(
  //           builder: (context) => LoginscreenScreen(),
  //         )
  //     );
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(top: 155.v),
          child: Column(
            children: [
              Container(
                height: 98.adaptSize,
                width: 98.adaptSize,
                padding: EdgeInsets.symmetric(
                  horizontal: 35.h,
                  vertical: 39.v,
                ),
                decoration: AppDecoration.outlinePrimary.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder49,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgCheckmark,
                  color: Color(0xff48CF9F),
                  height: 17.v,
                  width: 24.h,
                  alignment: Alignment.topCenter,
                ),
              ).animate()
                  .fadeIn(duration: 100.ms)
                  .then(delay: 10.ms)
                  .slide(
                begin: Offset(0, 100),
                end: Offset(0, 0),
                duration: 1300.ms,
              ),
              SizedBox(height: 5.v),
              SizedBox(
                height: 230.v,
                width: 427.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Successful",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black
                      ),
                    ).animate()
                        .fadeIn(duration: 0.ms)
                        .then(delay: 0.ms)
                        .slide(
                      begin: Offset(50, 0),
                      end: Offset(0, 0),
                      duration: 1800.ms,
                    ),
                    Text("Congratulations! Your password has\nbeen changed. Click continue to login",
                      style: CustomTextStyles
                          .titleMediumff989898
                    ).animate()
                        .fadeIn(duration: 0.ms)
                        .then(delay: 0.ms)
                        .slide(
                      begin: Offset(50, 0),
                      end: Offset(0, 0),
                      duration: 1800.ms,
                    ),
                    _buildContinue(context).animate()
                        .fadeIn(duration: 0.ms)
                        .then(delay: 0.ms)
                        .slide(
                      begin: Offset(0, 50),
                      end: Offset(0, 0),
                      duration: 3500.ms,
                    ),
                ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContinue(BuildContext context) {
    return CustomElevatedButton(
      text: "Update Password",
      margin: EdgeInsets.symmetric(
        horizontal: 25
      ),
      buttonStyle: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(
          Color(0xff648DDB)
        )
      ),
      onPressed: (){
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  LoginscreenScreen(),
            )
        );
      },
    );
  }
}
