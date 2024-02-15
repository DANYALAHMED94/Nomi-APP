import 'package:flutter/material.dart';
import 'package:nomi/core/app_export.dart';
import 'package:nomi/presentation/newpasswordscreen_screen/newpasswordscreen_screen.dart';
import 'package:nomi/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:nomi/widgets/app_bar/custom_app_bar.dart';
import 'package:nomi/widgets/custom_elevated_button.dart';

class PasswordresetconfirmationScreen extends StatelessWidget {
  const PasswordresetconfirmationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
                padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 13.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Password reset", style: theme.textTheme.titleLarge),
                      SizedBox(height: 12.v),
                      SizedBox(
                          width: 375.h,
                          child: Text(
                              "Your password has successfully reset. click\nconfirm to set a new password",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style:
                                  CustomTextStyles.titleMediumGray50003Medium)),
                      SizedBox(height: 32.v),
                      CustomElevatedButton(
                          text: "Confirm",
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => NewpasswordscreenScreen(),));
                          }),
                      SizedBox(height: 5.v)
                    ]
                )
            )
        )
    );
  }
}
