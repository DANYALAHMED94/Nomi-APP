import 'package:nomi/presentation/historythree_screen/historythree_screen.dart';
import '../../widgets/custom_text_form_field.dart';
import '../history_screen/history_screen.dart';
import '../historytwo_screen/widgets/daycomponentgrid_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:nomi/core/app_export.dart';
import 'package:nomi/widgets/app_bar/appbar_title_image.dart';
import 'package:nomi/widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import 'package:nomi/widgets/app_bar/custom_app_bar.dart';

class HistorytwoScreen extends StatelessWidget {
  HistorytwoScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 13.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 27.v),
                child: Column(
                  children: [
                    SizedBox(height: 17.v),
                    _buildDayComponentGrid(context),
                  ],
                ),
              ),
            ),
          ],
        ),
      )
    );
  }


  Widget _buildDayComponentGrid(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisExtent: 135.v,
        crossAxisCount: 3,
        mainAxisSpacing: 6.h,
        crossAxisSpacing: 6.h,
      ),
      physics: BouncingScrollPhysics(),
      itemCount: 6,
      itemBuilder: (context, index) {
        return DaycomponentgridItemWidget(index: index,);
      },
    );
  }

  Widget _buildRecordsSection(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(
          left: 10.h,
          right: 13.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Records",
              style: theme.textTheme.headlineSmall,
            ),
            Spacer(),
            CustomImageView(
              imagePath: ImageConstant.imgMegaphoneGray90001,
              height: 19.v,
              width: 31.h,
              onTap: (){
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HistorythreeScreen(),
                    )
                );
              },
              color: Colors.black,
              margin: EdgeInsets.symmetric(vertical: 6.v),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12.h),
              child: SizedBox(
                height: 29.v,
                child: VerticalDivider(
                  width: 1.h,
                  thickness: 1.v,
                  endIndent: 4.h,
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgPhSquaresFourBold,
              height: 31.adaptSize,
              width: 31.adaptSize,
              color: Color(0xff55F4BB),
              margin: EdgeInsets.only(left: 6.h),
            ),
            Padding(
              padding: EdgeInsets.only(left: 6.h),
              child: SizedBox(
                height: 30.v,
                child: VerticalDivider(
                  width: 1.h,
                  thickness: 1.v,
                  endIndent: 5.h,
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgThumbsUpSecondarycontainer,
              height: 21.v,
              width: 28.h,
              color: Colors.black,
              onTap: (){
                Navigator
                    .pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HistoryScreen(),
                    )
                );
              },
              margin: EdgeInsets.only(
                left: 8.h,
                top: 5.v,
                bottom: 5.v,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
