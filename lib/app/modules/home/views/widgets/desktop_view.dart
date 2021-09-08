import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'package:landing_page/app/modules/home/controllers/home_controller.dart';
import 'package:landing_page/app/modules/home/models/badge_model.dart';
import 'package:landing_page/utils/widgets/badges/badge.dart';
import 'package:landing_page/utils/widgets/custom_icon_button.dart';
import 'package:landing_page/utils/widgets/bottom/bottom_image.dart';
import 'package:landing_page/utils/widgets/main/main_subtitle.dart';
import 'package:landing_page/utils/widgets/bottom/bottom_text.dart';
import 'package:landing_page/utils/widgets/main/main_title.dart';
import 'package:url_launcher/url_launcher.dart';

class DesktopView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    double badgeContainerSize = screenSize.width * .15;
    double badgeIconSize = screenSize.width * .05;
    double badgeLineHeight = screenSize.height * .002;
    return Container(
      constraints: BoxConstraints(maxWidth: screenSize.width),
      child: ListView(children: [
        Container(
          constraints: BoxConstraints(minHeight: screenSize.height / 1.6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(left: screenSize.width / 10),
                width: screenSize.width / 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: MainTitle(
                        fontSize: screenSize.height * .1,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: MainSubtitle(
                        fontSize: screenSize.height * .03,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomIconButton(
                            icon: Icons.arrow_back,
                            text: 'Empieza ya',
                            function: () {
                              _launchURL();
                            },
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: screenSize.height / 14,
                    ),
                  ],
                ),
              ),
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: screenSize.width / 10),
                width: screenSize.width / 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    SvgPicture.asset(
                      'assets/images/banner1.svg',
                      width: screenSize.width / 3,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: screenSize.width * .12,
              vertical: screenSize.width / 10),
          width: screenSize.width,
          height: screenSize.height * .8,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: badgesList.length,
            separatorBuilder: (BuildContext context, int index) => SizedBox(
              width: screenSize.width * .15,
            ),
            itemBuilder: (context, index) {
              return Badge(
                mainText: badgesList[index].mainText,
                secondaryText: badgesList[index].secondaryText,
                iconRoute: badgesList[index].iconRoute,
                iconWidth: badgeIconSize,
                containerWidth: badgeContainerSize,
                lineHeight: badgeLineHeight,
              );
            },
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: screenSize.width * .1),
              width: screenSize.width / 2.5,
              child: BottomText(
                lineHeight: screenSize.height * .0025,
                containerWidth: screenSize.width / 2.5,
              ),
            ),
            SizedBox(
              width: screenSize.width / 5,
            ),
            Container(
              padding: EdgeInsets.only(right: screenSize.width * .1),
              width: screenSize.width / 2.5,
              child: BottomImage(),
            ),
          ],
        ),
        SizedBox(
          height: 100,
        ),
      ]),
    );
  }
}

const _url = 'https://requirementwebapp.web.app/#/signin';

void _launchURL() async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
