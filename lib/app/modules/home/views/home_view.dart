import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:landing_page/app/modules/home/views/widgets/desktop_view.dart';
import 'package:landing_page/app/modules/home/views/widgets/medium_view.dart';
import 'package:landing_page/app/modules/home/views/widgets/mobile_view.dart';
import 'package:landing_page/utils/helpers/responsive.dart';
import 'package:landing_page/utils/helpers/style.dart';
import 'package:landing_page/utils/widgets/drawer.dart';
import 'package:landing_page/utils/widgets/navbar_desktop.dart';
import 'package:landing_page/utils/widgets/navbar_mobile.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: false,
      appBar: ResponsiveWidget.isSmallScreen(context)
          ? mobileNavBar(scaffoldKey)
          : PreferredSize(
              preferredSize: Size(screenSize.width, 1000),
              child: NavBar(),
            ),
      drawer: SideMenu(),
      backgroundColor: bgColor,
      body: ResponsiveWidget(
        largeScreen: DesktopView(),
        mediumScreen: MediumView(),
        smallScreen: MobileView(),
      ),
    );
  }
}
