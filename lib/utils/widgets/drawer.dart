import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page/utils/helpers/style.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
          color: active,
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {},
                child: Text(
                  'Pricing',
                  style: GoogleFonts.montserrat(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Divider(),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  'Login',
                  style: GoogleFonts.montserrat(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Divider(),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  'Register',
                  style: GoogleFonts.montserrat(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Copyright 2021 | ReQueriment',
                    style: GoogleFonts.montserrat(
                        color: Colors.white, fontSize: 14),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
