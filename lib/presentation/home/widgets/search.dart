import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:technical_test/presentation/common/appColor.dart';

class TextFields extends StatefulWidget {
  TextEditingController controller;
   TextFields({super.key, required this.controller});

  @override
  State<TextFields> createState() => _TextFieldsState();
}

class _TextFieldsState extends State<TextFields> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: widget.controller,
        minLines: 1,
        maxLines: 1,
        
        decoration: InputDecoration(
          hintText: "Dipentene",
          prefixIcon: Icon(Icons.search),
          errorMaxLines: 1,
          counterText: '',
          hintStyle: GoogleFonts.poppins(color: Colors.grey),
          fillColor: AppColor.white,
         
          contentPadding: const EdgeInsets.all(16)
        )
      );
  }
}