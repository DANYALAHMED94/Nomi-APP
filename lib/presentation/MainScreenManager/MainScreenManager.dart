import 'package:flutter/material.dart';
import 'package:nomi/core/app_export.dart';
import 'package:nomi/presentation/calendar_screen/calendar_screen.dart';
import 'package:nomi/presentation/homescreen_page/homescreen_page.dart';
import 'package:nomi/presentation/homescreenthree_screen/homescreenthree_screen.dart';
import 'package:nomi/presentation/profilescreen_screen/profilescreen_screen.dart';
import '../../widgets/custom_image_view.dart';

class MainScreensManager extends StatefulWidget {
  const MainScreensManager();

  @override
  State<MainScreensManager> createState() => _MainScreensManagerState();
}

class _MainScreensManagerState extends State<MainScreensManager> {

  List<Widget> screensList = [
    HomescreenPage(),
    HomescreenthreeScreen(),
    CalendarScreen(),
    ProfilescreenScreen(),
  ];

  int currentTab = 0;

  final PageStorageBucket bucket = PageStorageBucket();

  Widget currentScreen = HomescreenPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
          bucket: bucket,
          child: currentScreen
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Color(0xff49EEB3),
        child: Icon(Icons.add, color: Colors.white, size: 35,),
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                      minWidth: 40,
                      onPressed: (){
                        setState(() {
                          currentScreen = HomescreenPage();
                          currentTab = 0;
                        });
                      },
                    child: CustomImageView(
                      imagePath: ImageConstant.imgHome,
                      height: 40.v,
                      width: 40.h,
                      color: Color(0xff49EEB3),
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        currentScreen = HomescreenthreeScreen();
                        currentTab = 1;
                      });
                    },
                    child: CustomImageView(
                      // imagePath: ImageConstant.imgOcticonGift16,
                      imagePath: ImageConstant.imgBottom2,
                      height: 50.v,
                      width: 40.h,
                      color: Color(0xff49EEB3),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        currentScreen =CalendarScreen();
                        currentTab = 2;
                      });
                    },
                    child: CustomImageView(
                      imagePath: ImageConstant.imgCalendarGreenA200,
                      height: 40.v,
                      width: 40.h,
                      color: Color(0xff49EEB3),
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        currentScreen = ProfilescreenScreen();
                        currentTab = 3;
                      });
                    },
                    child: CustomImageView(
                      // imagePath: ImageConstant.imgOcticonGift16,
                      imagePath: ImageConstant.imgGgProfile,
                      height: 40.v,
                      width: 40.h,
                      color: Color(0xff49EEB3),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
