import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/custom_text.dart';
import '../constants.dart';
import '../screens/detail_screen.dart';

class CustomVerticalProductCard extends StatelessWidget {
  final String prodName;
  final String prodSize;
  final String prodPrice;
  final String prodImage;
  final int numStars;
  final int quantity;
  final String description;

  const CustomVerticalProductCard({
    super.key,
    required this.prodName,
    required this.prodSize,
    required this.prodPrice,
    required this.prodImage,
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
          // Navigate to DetailScreen passing the image correctly
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return DetailScreen(
              prodName: prodName,
              prodSize: prodSize,
              prodPrice: prodPrice,
              numStars: numStars,
              quantity: quantity,
              description: description,
              prodImage: prodImage, // <--- Added this line!
            );
          }));
        },
        child: Container(
          width: ScreenUtil().setWidth(140),
          // Height set to 220 to prevent overflow (as fixed previously)
          height: ScreenUtil().setHeight(220), 
          padding: EdgeInsets.symmetric(
              horizontal: ScreenUtil().setWidth(10),
              vertical: ScreenUtil().setHeight(10)),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween, // Helps spacing
            children: [
              Container(
                height: ScreenUtil().setHeight(80),
                width: double.infinity,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Image.asset(
                  prodImage,
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