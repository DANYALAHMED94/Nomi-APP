import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nomi/core/app_export.dart';
import 'package:nomi/presentation/moodtwo_screen/moodtwo_screen.dart';
import 'package:nomi/widgets/app_bar/appbar_title_image.dart';
import 'package:nomi/widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import 'package:nomi/widgets/app_bar/custom_app_bar.dart';
import 'package:nomi/widgets/custom_elevated_button.dart';
import 'package:nomi/widgets/custom_icon_button.dart';

class MoodoneScreen extends StatefulWidget {
  MoodoneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<MoodoneScreen> createState() => _MoodoneScreenState();
}

class _MoodoneScreenState extends State<MoodoneScreen> {

  double sliderValue = 20;

  List<String> emojiList = [
    ImageConstant.imgAngry,
    ImageConstant.imgDepressed,
    ImageConstant.imgNormal,
    ImageConstant.imgHappy,
    ImageConstant.imgExtraHappy,
  ];

  List<String> moodsList = [
    "Angry",
    "Disappointed",
    "Normal",
    "Smiling Face",
    "Extra-Ordinary Happy",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _buildSun4JunStack(context),
              Container(
                height: MediaQuery.of(context).size.height*0.35,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(top: 117.v),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: ListView.builder(
                              itemBuilder: (context, index) {
                                return CircleAvatar(
                                  backgroundColor: index==sliderValue~/25?Colors.amber:Colors.white,
                                  radius: 30,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CircleAvatar(
                                      radius: 25,
                                      backgroundImage: AssetImage(
                                          emojiList[index].toString()
                                      ),
                                    ),
                                  ),
                                );
                              },
                              itemExtent: 50,
                              itemCount: emojiList.length,
                              scrollDirection: Axis.horizontal,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "${moodsList[sliderValue~/25]}",
                        style: CustomTextStyles.titleMediumMontserrat,
                      ),
                    ),
                    Slider(
                      value: sliderValue,
                      min: 0,
                      max: 100,
                      divisions: 4,
                      inactiveColor: Colors.grey.shade200,
                      thumbColor: Colors.white,
                      onChanged: (value) {
                        sliderValue = value;
                        setState(() {

                        });
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildContinue(context, emojiList[sliderValue~/25].toString()),
      ),
    );
  }

  /// Section Widget
  Widget _buildSun4JunStack(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.32,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomAppBar(
            height: 70.v,
            centerTitle: true,
            title: AppbarTitleImage(
              imagePath: ImageConstant.imgBradgoodLogo,
            ),
            actions: [
              AppbarTrailingIconbuttonOne(
                imagePath: ImageConstant.imgScreenshot2023,
                margin: EdgeInsets.symmetric(horizontal: 18.h),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 17.h,
              top: 10.v,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    // left: 56.h,
                    top: 13.v,
                    bottom: 6.v,
                  ),
                  child: Text(
                    "Sun, 4 Jun",
                    style: CustomTextStyles
                        .bodyLargeMontserratOnErrorContainer,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    // left: 56.h,
                    top: 13.v,
                    bottom: 6.v,
                  ),
                  child: Text(
                    "1/2",
                    style: CustomTextStyles
                        .bodyLargeMontserratOnErrorContainer,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    // left: 56.h,
                    top: 13.v,
                    bottom: 6.v,
                  ),
                  child: IconButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.close, color: Colors.black, size: 20,),
                  )
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              // left: 17.h,
              right: 22.h,
              bottom: 20.v,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: 333.h,
                  child: Text(
                    "How do you feel right now\n Patrick?",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.headlineSmallMontserratBlack900,
                  ),
                ),
                // SizedBox(height: 15.v),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Use the sliding bar to show how you’re feeling",
                    style: CustomTextStyles.bodyMediumMontserratBlack900,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContinue(BuildContext context, String imagePath) {
    return CustomElevatedButton(
      height: 60.v,
      text: "Continue",
      onPressed: (){
        Navigator
            .push(
            context,
            MaterialPageRoute(
              builder: (context) => MoodtwoScreen(imagePath: imagePath),
            )
        );
      },
      margin: EdgeInsets.only(
        left: 25.h,
        right: 29.h,
        bottom: 40.v,
      ),
      buttonStyle: CustomButtonStyles.outlineBlack,
      buttonTextStyle: CustomTextStyles.titleMediumMontserratOnPrimaryContainer,
    );
  }
}
