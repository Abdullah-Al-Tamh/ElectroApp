import 'package:elctoapp/constant.dart';
import 'package:elctoapp/widgets/home/home_body.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: homeAppbar(),
      body: const HomeBody(),
    );
  }

  AppBar homeAppbar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      title: Align(
        alignment: Alignment.centerRight,
        child: Text(
          "مرحبا بكم بمتجر الالكترونيات",
          style: GoogleFonts.getFont('Almarai'),
        ),
      ),
      centerTitle: false,
      actions: [
        Align(
          alignment: Alignment.centerLeft,
          child: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        ),
      ],
    );
  }
}
