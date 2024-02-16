import 'package:nomi/presentation/currentgoals_screen/currentgoals_screen.dart';
import 'package:nomi/presentation/homescreenthree_screen/homescreenthree_screen.dart';

import '../chatselection_screen/widgets/mydaytodaycomponentgrid_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:nomi/core/app_export.dart';

class ChatselectionScreen extends StatelessWidget {
  const ChatselectionScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: SizedBox(
          width: 414.h,
          child: Column(
            children: [
              SizedBox(height: 31.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 17.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 352.h,
                          margin: EdgeInsets.only(right: 25.h),
                          child: Text(
                            "What would you like to talk about today?",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.titleLargeNunitoGray500,
                          ),
                        ),
                        SizedBox(height: 5.v),
                        Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text(
                            "Select 1 or more options to start:",
                            style: CustomTextStyles.bodyMediumNunitoGray50003,
                          ),
                        ),
                        SizedBox(height: 17.v),
                        _buildMyDayTodayComponentGrid(context),
                        SizedBox(height: 11.v),
                        // _buildViewRow(context),
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
  Widget _buildMyDayTodayComponentGrid(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 21.h,
          right: 18.h,
        ),
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 157.v,
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 29.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount: 8,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){
                Navigator
                    .push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CurrentgoalsScreen(),
                    )
                );
              },
                child: MydaytodaycomponentgridItemWidget(index: index,)
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildViewRow(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 21.h,
          right: 18.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 156.v,
              width: 155.h,
              decoration: BoxDecoration(
                color: appTheme.greenA200,
                borderRadius: BorderRadius.circular(
                  20.h,
                ),
              ),
            ),
            Container(
              height: 156.v,
              width: 155.h,
              padding: EdgeInsets.symmetric(
                horizontal: 52.h,
                vertical: 22.v,
              ),
              decoration: AppDecoration.fillGreenA.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder20,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgUserGray50,
                height: 50.v,
                width: 49.h,
                alignment: Alignment.topCenter,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
