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
        margin: EdgeInsets.fromLTRB(
          ScreenUtil().setSp(20),
          ScreenUtil().setSp(60),
          ScreenUtil().setSp(20),
          0,
        ),
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
            SizedBox(height: ScreenUtil().setHeight(10)),
            Align(
              alignment: Alignment.centerLeft,
              child: CustomText(
                text: 'Hello, Marius',
                fontSize: ScreenUtil().setSp(20),
                color: NU_BLUE,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),
            Align(
              alignment: Alignment.centerLeft,
              child: CustomText(
                text:
                    'Welcome to NUBD Exchange! Discover the best authentic sneakers and streetwear to elevate your daily fit. Browse our curated collection below.',
                fontSize: ScreenUtil().setSp(12),
                color: Colors.grey,
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),
            Align(
              alignment: Alignment.centerLeft,
              child: CustomText(
                text: 'Barked',
                fontSize: ScreenUtil().setSp(15),
                color: NU_BLUE,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),
            
            // ------------------------------------------------
            // VERTICAL CARDS (Barked Section)
            // ------------------------------------------------
            SizedBox(
              width: ScreenUtil().setWidth(1000),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CustomVerticalProductCard(
                      prodName: 'NU Cap',
                      prodPrice: '₱5,000.00',
                      prodSize: 'S, M, L',
                      numStars: 5,
                      prodImage: 'assets/images/bluecap.png',
                      description: 'Premium quality blue cap with embroidered NU logo. Adjustable strap for perfect fit.',
                    ),
                    SizedBox(width: ScreenUtil().setWidth(10)),
                    CustomVerticalProductCard(
                      prodName: 'NU Gold Shirt',
                      prodPrice: '₱6,500.00',
                      prodSize: 'Small, Large',
                      numStars: 4,
                      prodImage: 'assets/images/nugold.png',
                      description: 'Bright gold shirt made from 100% cotton. Perfect for school spirit days.',
                    ),
                    SizedBox(width: ScreenUtil().setWidth(10)),
                    CustomVerticalProductCard(
                      prodName: 'Keychain',
                      prodPrice: '₱800.00',
                      prodSize: 'Small',
                      numStars: 5,
                      prodImage: 'assets/images/dogs.png',
                      description: 'Durable metal keychain featuring the iconic Bulldogs mascot.',
                    ),
                    SizedBox(width: ScreenUtil().setWidth(10)),
                    CustomVerticalProductCard(
                      prodName: 'NU Necktie',
                      prodPrice: '₱800.00',
                      prodSize: 'S',
                      numStars: 5,
                      prodImage: 'assets/images/bluejack.png',
                      description: 'Formal necktie with subtle NU branding patterns. Ideal for formal university events.',
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: ScreenUtil().setHeight(10)),
            Align(
              alignment: Alignment.centerLeft,
              child: CustomText(
                text: 'On Sale',
                fontSize: ScreenUtil().setSp(15),
                color: NU_YELLOW,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),

            // ------------------------------------------------
            // HORIZONTAL CARDS (On Sale Section)
            // ------------------------------------------------
            CustomHorizontalProductCard(
              prodName: 'NU mug',
              prodPrice: '₱100.00',
              btnName: 'View',
              isCart: false,
              prodSize: 'one size',
              numStars: 4,
              prodImage: 'assets/images/bulldogsblack.png',
              description: 'Ceramic mug perfect for coffee or tea. Microwave safe.',
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),
            
            CustomHorizontalProductCard(
              prodName: 'NU lanyard',
              prodPrice: '₱150.00',
              btnName: 'View',
              isCart: false,
              prodSize: 'L',
              numStars: 5,
              prodImage: 'assets/images/lace.png',
              description: 'High-quality fabric lanyard with detachable buckle for IDs.',
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),

            CustomHorizontalProductCard(
              prodName: 'NU shirt',
              prodPrice: '₱200.00',
              btnName: 'View',
              isCart: false,
              prodSize: 'S, M, L',
              numStars: 3,
              prodImage: 'assets/images/bplain.png',
              description: 'Basic cotton shirt for everyday comfort on campus.',
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),
            
            CustomHorizontalProductCard(
              prodName: 'NU Hoodie',
              prodPrice: '₱250.00',
              btnName: 'View',
              isCart: false,
              prodSize: 'XL',
              numStars: 4,
              prodImage: 'assets/images/dogs.png',
              description: 'Soft fleece hoodie to keep you warm in air-conditioned rooms.',
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),
            
            CustomHorizontalProductCard(
              prodName: 'NU Pants',
              prodPrice: '₱300.00',
              btnName: 'View',
              isCart: false,
              prodSize: 'M',
              numStars: 5,
              prodImage: 'assets/images/ballshirt.png',
              description: 'Comfortable jogging pants with elastic waistband and pockets.',
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),
            
            CustomHorizontalProductCard(
              prodName: 'NU Stickers',
              prodPrice: '₱350.00',
              btnName: 'View',
              isCart: false,
              prodSize: 'L',
              numStars: 4,
              prodImage: 'assets/images/bluecap.png',
              description: 'Pack of vinyl waterproof stickers for laptops and water bottles.',
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),
            
            CustomHorizontalProductCard(
              prodName: 'NU Blue Shirt',
              prodPrice: '₱400.00',
              btnName: 'View',
              isCart: false,
              prodSize: 'S',
              numStars: 3,
              prodImage: 'assets/images/bplain.png',
              description: 'Classic blue tee with white print. A wardrobe staple.',
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),
            
            CustomHorizontalProductCard(
              prodName: 'NU Plushie',
              prodPrice: '₱450.00',
              btnName: 'View',
              isCart: false,
              prodSize: 'M',
              numStars: 5,
              prodImage: 'assets/images/bulldogsblack.png',
              description: 'Adorable bulldog mascot plush toy. Great as a gift.',
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),
            
            CustomHorizontalProductCard(
              prodName: 'NU Tumbler',
              prodPrice: '₱500.00',
              btnName: 'View',
              isCart: false,
              prodSize: '32oz',
              numStars: 4,
              prodImage: 'assets/images/dogs.png',
              description: 'Insulated stainless steel tumbler, keeps drinks cold for 12 hours.',
            ),
            SizedBox(height: ScreenUtil().setHeight(10)),
            
            CustomHorizontalProductCard(
              prodName: 'NU Watch',
              prodPrice: '₱550.00',
              btnName: 'View',
              isCart: false,
              prodSize: 'Small',
              numStars: 5,
              prodImage: 'assets/images/nugold.png',
              description: 'Stylish wrist watch with school colors and water resistance.',
            ),
            SizedBox(height: ScreenUtil().setHeight(20)),
          ],
        ),
      ),
    );
  }
}