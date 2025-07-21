import 'package:flutter/material.dart';
import 'package:technical_test/presentation/detail/widget/detail_card.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/image/backgroundImage.png"),
          Column(
            children: [
              DetailCard()
            ],
          )
        ],
      ),
    );
  }
}