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
                    'Lorem ipsum odor amet, consectetuer adipiscing elit. Egestas vulputate mattis accumsan ridiculus semper aptent.',
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
            
            // ------------------------------------------------
            // 5 HARD CODED BARKED ITEMS (Vertical Cards)
            // ------------------------------------------------
            SizedBox(
              width: ScreenUtil().setWidth(1000),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CustomVerticalProductCard( // Removed const
                      prodName: 'Nike Dunk Low',
                      prodPrice: '₱5,000.00',
                      prodSize: '9 US',
                      numStars: 5,
                      prodImage: 'assets/images/nubdexchange_logo.png',
                    ),
                    SizedBox(width: ScreenUtil().setWidth(10)),
                    CustomVerticalProductCard( // Removed const
                      prodName: 'Adidas Samba',
                      prodPrice: '₱6,500.00',
                      prodSize: '10 US',
                      numStars: 4,
                      prodImage: 'assets/images/nubdexchange_logo.png',
                    ),
                    SizedBox(width: ScreenUtil().setWidth(10)),
                    CustomVerticalProductCard( // Removed const
                      prodName: 'New Balance 530',
                      prodPrice: '₱4,800.00',
                      prodSize: '8.5 US',
                      numStars: 5,
                      prodImage: 'assets/images/nubdexchange_logo.png',
                    ),
                    SizedBox(width: ScreenUtil().setWidth(10)),
                    CustomVerticalProductCard( // Removed const
                      prodName: 'Jordan 1 High',
                      prodPrice: '₱9,000.00',
                      prodSize: '11 US',
                      numStars: 5,
                      prodImage: 'assets/images/nubdexchange_logo.png',
                    ),
                    SizedBox(width: ScreenUtil().setWidth(10)),
                    CustomVerticalProductCard( // Removed const
                      prodName: 'Vans Old Skool',
                      prodPrice: '₱3,500.00',
                      prodSize: '9 US',
                      numStars: 4,
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

            // ------------------------------------------------
            // 10 HARD CODED ON SALE ITEMS (Horizontal Cards)
            // ------------------------------------------------
            
            // Item 1
            CustomHorizontalProductCard( // Removed const
              prodName: 'Sale Item 1',
              prodPrice: '₱100.00',
              btnName: 'View',
              isCart: false,
              prodSize: 'M',
              numStars: 4,
              prodImage: 'assets/images/nubdexchange_logo.png',
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),

            // Item 2
            CustomHorizontalProductCard( // Removed const
              prodName: 'Sale Item 2',
              prodPrice: '₱150.00',
              btnName: 'View',
              isCart: false,
              prodSize: 'L',
              numStars: 5,
              prodImage: 'assets/images/nubdexchange_logo.png',
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),

            // Item 3
            CustomHorizontalProductCard( // Removed const
              prodName: 'Sale Item 3',
              prodPrice: '₱200.00',
              btnName: 'View',
              isCart: false,
              prodSize: 'S',
              numStars: 3,
              prodImage: 'assets/images/nubdexchange_logo.png',
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),

            // Item 4
            CustomHorizontalProductCard( // Removed const
              prodName: 'Sale Item 4',
              prodPrice: '₱250.00',
              btnName: 'View',
              isCart: false,
              prodSize: 'XL',
              numStars: 4,
              prodImage: 'assets/images/nubdexchange_logo.png',
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),

            // Item 5
            CustomHorizontalProductCard( // Removed const
              prodName: 'Sale Item 5',
              prodPrice: '₱300.00',
              btnName: 'View',
              isCart: false,
              prodSize: 'M',
              numStars: 5,
              prodImage: 'assets/images/nubdexchange_logo.png',
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),

            // Item 6
            CustomHorizontalProductCard( // Removed const
              prodName: 'Sale Item 6',
              prodPrice: '₱350.00',
              btnName: 'View',
              isCart: false,
              prodSize: 'L',
              numStars: 4,
              prodImage: 'assets/images/nubdexchange_logo.png',
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),

            // Item 7
            CustomHorizontalProductCard( // Removed const
              prodName: 'Sale Item 7',
              prodPrice: '₱400.00',
              btnName: 'View',
              isCart: false,
              prodSize: 'S',
              numStars: 3,
              prodImage: 'assets/images/nubdexchange_logo.png',
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),

            // Item 8
            CustomHorizontalProductCard( // Removed const
              prodName: 'Sale Item 8',
              prodPrice: '₱450.00',
              btnName: 'View',
              isCart: false,
              prodSize: 'M',
              numStars: 5,
              prodImage: 'assets/images/nubdexchange_logo.png',
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),

            // Item 9
            CustomHorizontalProductCard( // Removed const
              prodName: 'Sale Item 9',
              prodPrice: '₱500.00',
              btnName: 'View',
              isCart: false,
              prodSize: 'L',
              numStars: 4,
              prodImage: 'assets/images/nubdexchange_logo.png',
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),

            // Item 10
            CustomHorizontalProductCard( // Removed const
              prodName: 'Sale Item 10',
              prodPrice: '₱550.00',
              btnName: 'View',
              isCart: false,
              prodSize: 'XL',
              numStars: 5,
              prodImage: 'assets/images/nubdexchange_logo.png',
            ),
            SizedBox(height: ScreenUtil().setHeight(20)), // Bottom padding
          ],
        ),
      ),
    );
  }
}