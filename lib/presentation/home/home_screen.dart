import 'package:flutter/material.dart';
import 'package:technical_test/presentation/common/appColor.dart';
import 'package:technical_test/presentation/common/buttons.dart';
import 'package:technical_test/presentation/detail/detail_screen.dart';
import 'package:technical_test/presentation/home/widgets/banner.dart';
import 'package:technical_test/presentation/home/widgets/card.dart';
import 'package:technical_test/presentation/home/widgets/search.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).padding.top,),
              Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios_new_outlined),
                  ),
                  SizedBox(width: width*0.03,),
                  Expanded(child: TextFields(controller: searchController,)),
                  SizedBox(width: width*0.03,),
                  Buttons(color: AppColor.lightBlue, hasIcon: true,  padding: 20)
                ],
              ),
              AppBanner(),
              ...List.generate(10, (index){
                return Row(
                  children: [
                    CustomCard(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                          return DetailScreen();
                        }));
                      },
                    ),
                    CustomCard(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                          return DetailScreen();
                        }));
                      },
                    )
                  ],
                );
              })
              
          
            ],
          ),
        ),
      ),
    );
  }
}