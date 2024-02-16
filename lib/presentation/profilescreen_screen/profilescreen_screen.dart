import 'package:flutter/material.dart';
import 'package:nomi/core/app_export.dart';
import 'package:nomi/presentation/editprofile_screen/editprofile_screen.dart';
import 'package:nomi/widgets/custom_bottom_bar.dart';
import 'package:nomi/widgets/custom_elevated_button.dart';

class ProfilescreenScreen extends StatelessWidget {
  ProfilescreenScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  List<String> imagesList = [
    ImageConstant.imgRectangle4,
    ImageConstant.imgRectangle6,
    ImageConstant.imgRectangle5,
    ImageConstant.imgRectangle4,
    ImageConstant.imgRectangle6,
    ImageConstant.imgRectangle5,
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height*1.5,
            width: double.maxFinite,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildWidgetStack(context),
                SizedBox(height: 20.v),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Melissa peters",
                    style: CustomTextStyles.titleMediumIndigo900,
                  ),
                ),
                SizedBox(height: 7.v),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Interior designer",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                SizedBox(height: 2.v),
                Padding(
                  padding: EdgeInsets.only(left: 138.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath:
                        ImageConstant.imgMaterialSymbolsLocationOn,
                        height: 27.adaptSize,
                        width: 27.adaptSize,
                        color: Color(0xff544C4C),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 3.h,
                          top: 5.v,
                          bottom: 5.v,
                        ),
                        child: Text(
                          "Lagos, Nigeria",
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 68.h,
                    right: 81.h,
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "122",
                            style: CustomTextStyles.headlineSmallSemiBold,
                          ),
                          Text(
                            "Day Streak",
                            style: theme.textTheme.titleSmall,
                          ),
                        ],
                      ),
                      Spacer(
                        flex: 41,
                      ),
                      Column(
                        children: [
                          Text(
                            "350",
                            style: CustomTextStyles.headlineSmallSemiBold,
                          ),
                          Text(
                            "Check-ins",
                            style: theme.textTheme.titleSmall,
                          ),
                        ],
                      ),
                      Spacer(
                        flex: 58,
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 2.v),
                        child: Column(
                          children: [
                            Text(
                              "37K",
                              style: CustomTextStyles.headlineSmallSemiBold,
                            ),
                            Text(
                              "Points",
                              style: theme.textTheme.titleSmall,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12.v),
                Padding(
                  padding: EdgeInsets.only(left: 68.h),
                  child: Row(
                    children: [
                      CustomElevatedButton(
                        height: 35.v,
                        width: 124.h,
                        text: "Edit profile",
                        onPressed: (){
                          Navigator
                              .push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EditprofileScreen(),
                              )
                          );
                        },
                        buttonStyle: CustomButtonStyles.fillGreenATL11,
                        buttonTextStyle:
                        CustomTextStyles.bodyMediumOnPrimaryContainer,
                      ),
                      CustomElevatedButton(
                        height: 35.v,
                        width: 124.h,
                        text: "Add friends",
                        margin: EdgeInsets.only(left: 25.h),
                        buttonStyle: CustomButtonStyles.fillGreenATL11,
                        buttonTextStyle:
                        CustomTextStyles.bodyMediumOnPrimaryContainer,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 29.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 68.h,
                    right: 90.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Voice Notes",
                        style: CustomTextStyles.bodyMediumGray50001,
                      ),
                      Text(
                        "Photos",
                        style: CustomTextStyles.titleSmallGreenA200SemiBold,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 3.v),
                Align(
                  alignment: Alignment.center,
                  child: Divider(
                    color: appTheme.gray400,
                    thickness: 1,
                    indent: 50.h,
                    endIndent: 50.h,
                  ),
                ),
          
                Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 1.h),
                      child: GridView.builder(
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: 200.v,
                          crossAxisCount: 3,
                          mainAxisSpacing: 13.h,
                          crossAxisSpacing: 13.h,
                        ),
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 6,
                        padding: EdgeInsets.all(10),
                        itemBuilder: (context, index) {
                          return GestureDetector(
                              onTap: (){},
                              child: Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(imagesList[index]),
                                      fit: BoxFit.fill
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black,
                                        blurRadius: 2
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(10)
                                ),
                              ),
                          );
                        },
                      ),
                    ),
                )
          
                // SizedBox(height: 14.v),
                // Padding(
                //   padding: EdgeInsets.only(
                //     left: 25.h,
                //     right: 59.h,
                //   ),
                //   child: _buildWidgetRow(context),
                // ),
                // SizedBox(height: 18.v),
                // Padding(
                //   padding: EdgeInsets.only(
                //     left: 25.h,
                //     right: 58.h,
                //   ),
                //   child: _buildWidgetRow(context),
                // ),
                // SizedBox(height: 66.v),
              ],
            ),
          ),
        ),
        // bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildWidgetStack(BuildContext context) {
    return SizedBox(
      height: 280.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle2,
            height: 183.v,
            width: 428.h,
            alignment: Alignment.topCenter,
            fit: BoxFit.fill,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 155.adaptSize,
              width: 155.adaptSize,
              // padding: EdgeInsets.all(1.h),
              decoration: AppDecoration.outlineGreenA.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder77,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgEllipse2150x150,
                height: 150.adaptSize,
                width: 150.adaptSize,
                radius: BorderRadius.circular(
                  75.h,
                ),
                alignment: Alignment.center,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  // Widget _buildWidgetRow(BuildContext context) {
  //   return Row(
  //     children: [
  //       CustomImageView(
  //         imagePath: ImageConstant.imgRectangle4,
  //         height: 55.v,
  //         width: 110.h,
  //         radius: BorderRadius.circular(
  //           10.h,
  //         ),
  //       ),
  //       CustomImageView(
  //         imagePath: ImageConstant.imgRectangle6,
  //         height: 25.v,
  //         width: 110.h,
  //         radius: BorderRadius.circular(
  //           10.h,
  //         ),
  //         margin: EdgeInsets.only(left: 7.h),
  //       ),
  //       CustomImageView(
  //         imagePath: ImageConstant.imgRectangle5,
  //         height: 25.v,
  //         width: 110.h,
  //         radius: BorderRadius.circular(
  //           10.h,
  //         ),
  //         margin: EdgeInsets.only(left: 7.h),
  //       ),
  //     ],
  //   );
  // }
}
