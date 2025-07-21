import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/svg.dart';
import 'package:technical_test/presentation/common/appColor.dart';

class Buttons extends StatelessWidget {
  Color color;
  String? text;
  bool hasIcon;
  double padding;
  Buttons({super.key, required this.color, this.text, required this.hasIcon, required this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10)
      ),
      
      child: Builder(
        builder: (context) {
          if(hasIcon){
            return SizedBox(
              child: Padding(
                padding: EdgeInsets.all(padding),
                child: SvgPicture.asset("assets/icons/cart.svg"),
              ));
          }else{
            return Padding( 
              padding: const EdgeInsets.all(8.0),
              child: Text(
                text ?? "",
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  color: AppColor.white
                ),
              ),
            );
          }
          
        }
      ),
    );
  }
}