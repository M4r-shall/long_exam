import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants.dart';
import '../widgets/custom_horizontal_product_card.dart';
import '../widgets/custom_text.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(ScreenUtil().setSp(20),
          ScreenUtil().setSp(60), ScreenUtil().setSp(20), 0),
      color: Colors.white,
      width: ScreenUtil().screenWidth,
      child: Column(
        children: [
          CustomText(
            text: 'Cart',
            fontSize: ScreenUtil().setSp(25),
            color: NU_BLUE,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: ScreenUtil().setHeight(10),
          ),
          Expanded(
            flex: 1,
            child: SizedBox(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(10)),
                    child: CustomHorizontalProductCard(
                      prodName: 'NU tumbler',
                      prodPrice: '₱500.00',
                      prodSize: 'One Size',
                      numStars: 5,
                      prodImage: 'assets/images/nugold.png',
                      isCart: true,
                      btnName: 'Check Out',
                      description: 'Insulated tumbler to keep your drinks cold or hot all day.',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(10)),
                    child: CustomHorizontalProductCard(
                      prodName: 'NU Jacket',
                      prodPrice: '₱1,200.00',
                      prodSize: 'Full',
                      numStars: 5,
                      prodImage: 'assets/images/bluejack.png',
                      isCart: true,
                      btnName: 'Check Out',
                      description: 'Official NU windbreaker jacket, perfect for rainy days.',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(10)),
                    child: CustomHorizontalProductCard(
                      prodName: 'NU Shirt',
                      prodPrice: '₱1,200.00',
                      prodSize: 'Full',
                      numStars: 5,
                      prodImage: 'assets/images/bplain.png',
                      isCart: true,
                      btnName: 'Check Out',
                      description: 'Plain white shirt made with breathable cotton fabric.',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(10)),
                    child: CustomHorizontalProductCard(
                      prodName: 'NU bluecap',
                      prodPrice: '₱1,200.00',
                      prodSize: 'Full',
                      numStars: 5,
                      prodImage: 'assets/images/bluecap.png',
                      isCart: true,
                      btnName: 'Check Out',
                      description: 'Adjustable blue cap with embroidered university logo.',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(10)),
                    child: CustomHorizontalProductCard(
                      prodName: 'NU lace',
                      prodPrice: '₱1,200.00',
                      prodSize: 'Full',
                      numStars: 5,
                      prodImage: 'assets/images/lace.png',
                      isCart: true,
                      btnName: 'Check Out',
                      description: 'Durable ID lace / lanyard with NU branding.',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(10)),
                    child: CustomHorizontalProductCard(
                      prodName: 'NU Hoodie',
                      prodPrice: '₱1,200.00',
                      prodSize: 'Full',
                      numStars: 5,
                      prodImage: 'assets/images/bulldogsblack.png',
                      isCart: true,
                      btnName: 'Check Out',
                      description: 'Black hoodie featuring the classic Bulldogs design.',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(10)),
                    child: CustomHorizontalProductCard(
                      prodName: 'NU Hoodie',
                      prodPrice: '₱1,200.00',
                      prodSize: 'Full',
                      numStars: 5,
                      prodImage: 'assets/images/ballshirt.png',
                      isCart: true,
                      btnName: 'Check Out',
                      description: 'Special edition shirt celebrating the basketball team.',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(10)),
                    child: CustomHorizontalProductCard(
                      prodName: 'NU Lace',
                      prodPrice: '₱1,200.00',
                      prodSize: 'Full',
                      numStars: 5,
                      prodImage: 'assets/images/lace.png',
                      isCart: true,
                      btnName: 'Check Out',
                      description: 'Spare ID lace for students and faculty.',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(10)),
                    child: CustomHorizontalProductCard(
                      prodName: 'NU Hoodie',
                      prodPrice: '₱1,200.00',
                      prodSize: 'Full',
                      numStars: 5,
                      prodImage: 'assets/images/dogs.png',
                      isCart: true,
                      btnName: 'Check Out',
                      description: 'Comfortable hoodie with a unique graphic print.',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(10)),
                    child: CustomHorizontalProductCard(
                      prodName: 'NU Cap',
                      prodPrice: '₱1,200.00',
                      prodSize: 'Full',
                      numStars: 5,
                      prodImage: 'assets/images/bluecap.png',
                      isCart: true,
                      btnName: 'Check Out',
                      description: 'Stylish cap to complete your university outfit.',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(10)),
                    child: CustomHorizontalProductCard(
                      prodName: 'NU Hoodie',
                      prodPrice: '₱1,200.00',
                      prodSize: 'Full',
                      numStars: 5,
                      prodImage: 'assets/images/nugold.png',
                      isCart: true,
                      btnName: 'Check Out',
                      description: 'Gold shirt representing the school colors proudly.',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(10)),
                    child: CustomHorizontalProductCard(
                      prodName: 'NU Black Shirt',
                      prodPrice: '₱1,200.00',
                      prodSize: 'Full',
                      numStars: 5,
                      prodImage: 'assets/images/bulldogsblack.png',
                      isCart: true,
                      btnName: 'Check Out',
                      description: 'Premium black cotton shirt with minimal logo.',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(10)),
                    child: CustomHorizontalProductCard(
                      prodName: 'NU Shirt',
                      prodPrice: '₱1,200.00',
                      prodSize: 'Full',
                      numStars: 5,
                      prodImage: 'assets/images/bplain.png',
                      isCart: true,
                      btnName: 'Check Out',
                      description: 'Casual wear shirt, soft and durable.',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(10)),
                    child: CustomHorizontalProductCard(
                      prodName: 'NU Hoodie',
                      prodPrice: '₱1,200.00',
                      prodSize: 'Full',
                      numStars: 5,
                      prodImage: 'assets/images/dogs.png',
                      isCart: true,
                      btnName: 'Check Out',
                      description: 'Warm pullover hoodie for the rainy season.',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(10)),
                    child: CustomHorizontalProductCard(
                      prodName: 'NU Jacket',
                      prodPrice: '₱1,200.00',
                      prodSize: 'Full',
                      numStars: 5,
                      prodImage: 'assets/images/bluejack.png',
                      isCart: true,
                      btnName: 'Check Out',
                      description: 'Varsity style jacket with embroidered details.',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}