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