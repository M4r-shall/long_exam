import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// Note: You might need to adjust this import path if your project name is different
import '../widgets/custom_text.dart';

import '../constants.dart';
import '../screens/detail_screen.dart';

class CustomVerticalProductCard extends StatelessWidget {
  final String prodName;
  final String prodSize;
  final String prodPrice;
  final String prodImage; // Added parameter
  final int numStars;
  final int quantity;
  final String description;

  const CustomVerticalProductCard({
    super.key,
    required this.prodName,
    required this.prodSize,
    required this.prodPrice,
    required this.prodImage, // Required in constructor
    required this.numStars,
    this.quantity = 1,
    this.description = '',
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 1,
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return DetailScreen(
              prodName: prodName,
              prodSize: prodSize,
              prodPrice: prodPrice,
              numStars: numStars,
              quantity: quantity,
              description: description,
              // Uncomment the line below if/when your DetailScreen accepts an image parameter
              // prodImage: prodImage, 
            );
          }));
        },
        child: Container(
          width: ScreenUtil().setWidth(140),
          // Increased height slightly to prevent overflow with the image
          height: ScreenUtil().setHeight(180), 
          padding: EdgeInsets.symmetric(
              horizontal: ScreenUtil().setWidth(15),
              vertical: ScreenUtil().setHeight(15)),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Dynamic ProdImage
              Container(
                height: ScreenUtil().setHeight(80),
                width: double.infinity,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Image.asset(
                  prodImage, // Using the passed image path
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(5),
              ),
              CustomText(
                text: prodName,
                fontSize: ScreenUtil().setSp(15),
                color: NU_BLUE,
                fontWeight: FontWeight.w900,
              ),
              SizedBox(
                height: ScreenUtil().setHeight(3),
              ),
              CustomText(
                  text: prodSize,
                  fontSize: ScreenUtil().setSp(10),
                  color: Colors.black45),
              SizedBox(
                height: ScreenUtil().setHeight(5),
              ),
              CustomText(
                text: prodPrice,
                fontSize: ScreenUtil().setSp(17),
                color: NU_YELLOW,
              ),
            ],
          ),
        ),
      ),
    );
  }
}