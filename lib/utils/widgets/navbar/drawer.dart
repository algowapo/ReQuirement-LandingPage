import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:landing_page/utils/helpers/style.dart';
import 'package:url_launcher/url_launcher.dart';

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
                onTap: () {
                  Navigator.pushNamed(context, '/home');
                },
                child: Text(
                  'Inicio',
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
                onTap: () {
                  Navigator.pushNamed(context, '/feedback');
                },
                child: Text(
                  'Ayúdanos a mejorar',
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
                onTap: () {
                  _launchURL('https://requirementwebapp.web.app/#/login');
                },
                child: Text(
                  'Inicia Sesión',
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
                onTap: () {
                  _launchURL('https://requirementwebapp.web.app/#/signin');
                },
                child: Text(
                  'Regístrate',
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

void _launchURL(_url) async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
