import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants.dart';
import '../widgets/custom_text.dart';

class DetailScreen extends StatelessWidget {
  final String prodName;
  final String prodSize;
  final String prodPrice;
  final String prodImage; // Added parameter
  final int numStars;
  final int quantity;
  final String description;

  const DetailScreen({
    super.key,
    required this.prodName,
    required this.prodSize,
    required this.prodPrice,
    required this.prodImage, // Required in constructor
    required this.numStars,
    required this.quantity,
    this.description = 'Lorem ipsum',
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Container(
                      height: ScreenUtil().setHeight(250),
                      width: double.infinity,
                      color: Colors.grey[100],
                      padding: const EdgeInsets.all(20),
                      child: Image.asset(
                        prodImage,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Positioned(
                    top: ScreenUtil().setHeight(10),
                    left: ScreenUtil().setWidth(10),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 4,
                              offset: Offset(0, 2),
                            )
                          ],
                        ),
                        child: Icon(
                          Icons.keyboard_backspace,
                          size: ScreenUtil().setSp(24),
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: ScreenUtil().setHeight(10),
                    right: ScreenUtil().setWidth(10),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.yellow[700],
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.star, color: Colors.white, size: 16),
                          const SizedBox(width: 4),
                          CustomText(
                            text: '$numStars',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: ScreenUtil().setSp(14),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: ScreenUtil().setHeight(20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _dotIndicator(isActive: true),
                  _dotIndicator(isActive: false),
                  _dotIndicator(isActive: false),
                ],
              ),
              SizedBox(height: ScreenUtil().setHeight(20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: prodName,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: ScreenUtil().setSp(24),
                  ),
                  CustomText(
                    text: prodPrice,
                    color: NU_BLUE,
                    fontWeight: FontWeight.bold,
                    fontSize: ScreenUtil().setSp(24),
                  ),
                ],
              ),
              SizedBox(height: ScreenUtil().setHeight(5)),
              CustomText(
                 text: 'Size: $prodSize  |  Qty: $quantity',
                 fontSize: ScreenUtil().setSp(14),
                 color: Colors.grey,
              ),
              
              SizedBox(height: ScreenUtil().setHeight(20)),
              CustomText(
                text: 'Available color versions:',
                fontSize: ScreenUtil().setSp(15),
                color: Colors.black,
              ),
              SizedBox(height: ScreenUtil().setHeight(8)),
              Row(
                children: [
                  _colorDot(const Color.fromARGB(255, 244, 219, 54)),
                  const SizedBox(width: 8),
                  _colorDot(const Color.fromARGB(255, 0, 0, 0)),
                  const SizedBox(width: 8),
                  _colorDot(Colors.blue),
                ],
              ),
              SizedBox(height: ScreenUtil().setHeight(16)),
              CustomText(
                text: "Description",
                fontSize: ScreenUtil().setSp(15),
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: ScreenUtil().setHeight(5)),
              Expanded(
                child: SingleChildScrollView(
                  child: CustomText(
                    text: description,
                    fontSize: ScreenUtil().setSp(12),
                  ),
                ),
              ),
              SizedBox(height: ScreenUtil().setHeight(10)),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow[700],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: CustomText(
                  text: 'Add to cart',
                  fontSize: ScreenUtil().setSp(18),
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _colorDot(Color color) {
    return CircleAvatar(
      radius: 12,
      backgroundColor: color,
    );
  }

  Widget _dotIndicator({required bool isActive}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        color: isActive ? Colors.blue : Colors.grey[300],
        shape: BoxShape.circle,
      ),
    );
  }
}