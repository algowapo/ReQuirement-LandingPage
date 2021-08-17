import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:landing_page/utils/helpers/style.dart';

PreferredSizeWidget mobileNavBar(GlobalKey<ScaffoldState> key) {
  return AppBar(
    leading: IconButton(
      icon: Icon(Icons.menu, color: active),
      onPressed: () {
        key.currentState!.openDrawer();
      },
    ),
    backgroundColor: Colors.transparent,
    title: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        "Re-Quirement",
        style: GoogleFonts.tradeWinds(fontSize: 20, color: Colors.black),
      ),
    ),
    centerTitle: true,
    elevation: 0,
  );
}
