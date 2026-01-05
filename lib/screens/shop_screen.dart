import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants.dart';
import '../widgets/custom_text.dart';
import '../widgets/custom_horizontal_product_card.dart';
import '../widgets/custom_vertical_product_card.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.fromLTRB(ScreenUtil().setSp(20),
            ScreenUtil().setSp(60), ScreenUtil().setSp(20), 0),
        color: Colors.white,
        width: ScreenUtil().screenWidth,
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: CircleAvatar(
                radius: ScreenUtil().setSp(30),
                backgroundColor: NU_YELLOW,
                child: Padding(
                  padding: EdgeInsets.all(ScreenUtil().setSp(12.5)),
                  child: Image.asset('assets/images/nubdexchange_logo.png'),
                ),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(10),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: CustomText(
                text: 'Hello, Marius',
                fontSize: ScreenUtil().setSp(20),
                color: NU_BLUE,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(10),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: CustomText(
                text:
                    'Welcome to NUBD Exchange! Discover the best authentic sneakers and streetwear to elevate your daily fit. Browse our curated collection below.',
                fontSize: ScreenUtil().setSp(12),
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(10),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: CustomText(
                text: 'Barked',
                fontSize: ScreenUtil().setSp(15),
                color: NU_BLUE,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(10),
            ),
            SizedBox(
              width: ScreenUtil().setWidth(1000),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CustomVerticalProductCard(
                      prodName: 'Traditional Uniform',
                      prodPrice: '₱5,000.00',
                      prodSize: 'S, M, L',
                      numStars: 5,
                      prodImage: 'assets/images/nubdexchange_logo.png',
                    ),
                    SizedBox(width: ScreenUtil().setWidth(10)),
                    CustomVerticalProductCard(
                      prodName: 'Plushie',
                      prodPrice: '₱6,500.00',
                      prodSize: 'Small, Large',
                      numStars: 4,
                      prodImage: 'assets/images/nubdexchange_logo.png',
                    ),
                    SizedBox(width: ScreenUtil().setWidth(10)),
                    CustomVerticalProductCard(
                      prodName: 'Keychain',
                      prodPrice: '₱800.00',
                      prodSize: '2 inch',
                      numStars: 5,
                      prodImage: 'assets/images/nubdexchange_logo.png',
                    ),
                  ],
                ),
              ),
            ),
            
            SizedBox(
              height: ScreenUtil().setHeight(10),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: CustomText(
                text: 'On Sale',
                fontSize: ScreenUtil().setSp(15),
                color: NU_YELLOW,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(10),
            ),
            CustomHorizontalProductCard(
              prodName: 'NU mug',
              prodPrice: '₱100.00',
              btnName: 'View',
              isCart: false,
              prodSize: 'one size',
              numStars: 4,
              prodImage: 'assets/images/nubdexchange_logo.png',
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),
            CustomHorizontalProductCard(
              prodName: 'NU lanyard',
              prodPrice: '₱150.00',
              btnName: 'View',
              isCart: false,
              prodSize: 'L',
              numStars: 5,
              prodImage: 'assets/images/nubdexchange_logo.png',
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),

            CustomHorizontalProductCard(
              prodName: 'NU shirt',
              prodPrice: '₱200.00',
              btnName: 'View',
              isCart: false,
              prodSize: 'S',
              numStars: 3,
              prodImage: 'assets/images/nubdexchange_logo.png',
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),
            CustomHorizontalProductCard(
              prodName: 'NU Hoodie',
              prodPrice: '₱250.00',
              btnName: 'View',
              isCart: false,
              prodSize: 'XL',
              numStars: 4,
              prodImage: 'assets/images/nubdexchange_logo.png',
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),
            CustomHorizontalProductCard(
              prodName: 'NU Pants',
              prodPrice: '₱300.00',
              btnName: 'View',
              isCart: false,
              prodSize: 'M',
              numStars: 5,
              prodImage: 'assets/images/nubdexchange_logo.png',
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),
            CustomHorizontalProductCard(
              prodName: 'NU Stickers',
              prodPrice: '₱350.00',
              btnName: 'View',
              isCart: false,
              prodSize: 'L',
              numStars: 4,
              prodImage: 'assets/images/nubdexchange_logo.png',
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),
            CustomHorizontalProductCard(
              prodName: 'NU Blue Shirt',
              prodPrice: '₱400.00',
              btnName: 'View',
              isCart: false,
              prodSize: 'S',
              numStars: 3,
              prodImage: 'assets/images/nubdexchange_logo.png',
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),
            CustomHorizontalProductCard(
              prodName: 'NU Plushie',
              prodPrice: '₱450.00',
              btnName: 'View',
              isCart: false,
              prodSize: 'M',
              numStars: 5,
              prodImage: 'assets/images/nubdexchange_logo.png',
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),
            CustomHorizontalProductCard(
              prodName: 'NU Tumbler',
              prodPrice: '₱500.00',
              btnName: 'View',
              isCart: false,
              prodSize: 'L',
              numStars: 4,
              prodImage: 'assets/images/nubdexchange_logo.png',
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),
            CustomHorizontalProductCard(
              prodName: 'NU Watch',
              prodPrice: '₱550.00',
              btnName: 'View',
              isCart: false,
              prodSize: 'XL',
              numStars: 5,
              prodImage: 'assets/images/nubdexchange_logo.png',
            ),
            SizedBox(height: ScreenUtil().setHeight(20)),
          ],
        ),
      ),
    );
  }
}