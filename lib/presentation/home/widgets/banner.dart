import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:technical_test/presentation/common/appColor.dart';

class AppBanner extends StatefulWidget {
  const AppBanner({super.key});

  @override
  State<AppBanner> createState() => _AppBannerState();
}

class _AppBannerState extends State<AppBanner> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20)
        ),
        width: width,
        child: Image.asset("assets/image/Banner.png", fit: BoxFit.fill,)),
    );

  }
}