import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:technical_test/presentation/common/appColor.dart';
import 'package:technical_test/presentation/common/buttons.dart';


class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20)
        ),
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              child: Image.asset(
                "assets/image/cardImage.png"
              ),
            ),
            Text("Dipentsadasdene", style: GoogleFonts.poppins()),
            SizedBox(height: height*0.02,),
            Text("CAS Number :", style: GoogleFonts.poppins()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Text("CAS Number :", style: GoogleFonts.poppins())),
                Expanded(child: Text("HS Code :", style: GoogleFonts.poppins())),
              ],
            ),
            SizedBox(height: height*0.02,),
            Row(
              children: [
                Buttons(color: AppColor.darkBlue, text: "Send Inquiry", hasIcon: false, padding: 10),
                SizedBox(width: width*0.02,),
                Buttons(color: AppColor.lightBlue , hasIcon: true, padding: 10,)
              ],
            )
          ],
        )
      ),
    );
  }
}