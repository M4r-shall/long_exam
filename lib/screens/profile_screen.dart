import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants.dart';
import '../widgets/custom_text.dart';
import '../widgets/custom_vertical_product_card.dart';
import '../widgets/custom_horizontal_product_card.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: ScreenUtil().setHeight(60)),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: ScreenUtil().setWidth(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          'https://cdn.photographylife.com/wp-content/uploads/2014/06/Nikon-D810-Image-Sample-6.jpg'),
                    ),
                    SizedBox(width: ScreenUtil().setWidth(10)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: 'Marius Panahon',
                          fontSize: ScreenUtil().setSp(25),
                          color: NU_BLUE,
                          fontWeight: FontWeight.w900,
                        ),
                        SizedBox(height: ScreenUtil().setHeight(3)),
                        Row(
                          children: [
                            CustomText(
                              text: 'Coins ',
                              fontSize: ScreenUtil().setSp(12),
                              color: Colors.grey,
                            ),
                            CustomText(
                              text: '3000',
                              fontSize: ScreenUtil().setSp(12),
                              color: NU_YELLOW,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: ScreenUtil().setHeight(35)),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: ScreenUtil().setWidth(20)),
                child: CustomText(
                  text: 'Recommended for you',
                  fontSize: ScreenUtil().setSp(20),
                  color: NU_BLUE,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: ScreenUtil().setWidth(20)),
                child: SizedBox(
                  height: ScreenUtil().setHeight(500),
                  child: GridView.count(
                    physics: const NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.only(top: ScreenUtil().setHeight(10)),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                    childAspectRatio: 0.75,
                    children: [
                      CustomVerticalProductCard(
                        prodName: 'NU Black Shirt',
                        prodPrice: '₱4,500.00',
                        prodImage: 'assets/images/nubdexchange_logo.png',
                        prodSize: 'S, M, L',
                        numStars: 5,
                      ),
                      CustomVerticalProductCard(
                        prodName: 'NU White Shirt',
                        prodPrice: '₱8,000.00',
                        prodImage: 'assets/images/nubdexchange_logo.png',
                        prodSize: 'S, M, L',
                        numStars: 4,
                      ),
                      CustomVerticalProductCard(
                        prodName: 'NU Mug',
                        prodPrice: '₱3,200.00',
                        prodImage: 'assets/images/nubdexchange_logo.png',
                        prodSize: '12 oz',
                        numStars: 4,
                      ),
                      CustomVerticalProductCard(
                        prodName: 'NU Lanyard',
                        prodPrice: '₱3,500.00',
                        prodImage: 'assets/images/nubdexchange_logo.png',
                        prodSize: 'one size',
                        numStars: 5,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: ScreenUtil().setHeight(10)),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: ScreenUtil().setWidth(20)),
                child: CustomText(
                  text: 'My Items',
                  fontSize: ScreenUtil().setSp(20),
                  color: NU_BLUE,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: ScreenUtil().setHeight(10)),
              TabBar(
                indicatorColor: NU_BLUE,
                labelColor: NU_BLUE,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(
                    child: CustomText(
                      text: 'To Pay',
                      fontSize: ScreenUtil().setSp(15),
                    ),
                  ),
                  Tab(
                    child: CustomText(
                      text: 'To Ship',
                      fontSize: ScreenUtil().setSp(15),
                    ),
                  ),
                  Tab(
                    child: CustomText(
                      text: 'To Received',
                      fontSize: ScreenUtil().setSp(15),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: ScreenUtil().setWidth(20)),
                height: ScreenUtil().setHeight(1000),
                child: TabBarView(
                  children: [
                    _toPay(),
                    _toShip(),
                    _toReceived(),
                  ],
                ),
              ),
              SizedBox(height: ScreenUtil().setHeight(10)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _toPay() {
    return Column(
      children: [
        SizedBox(height: ScreenUtil().setHeight(10)),
        Padding(
          padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(10)),
          child: CustomHorizontalProductCard(
            prodName: 'NU Layard',
            prodPrice: '₱1,500.00',
            prodImage: 'assets/images/nubdexchange_logo.png',
            prodSize: 'N/A',
            numStars: 5,
            isCheckout: true,
            btnName: 'Pay Now',
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(10)),
          child: CustomHorizontalProductCard(
            prodName: 'NU Windbreaker',
            prodPrice: '₱3,500.00',
            prodImage: 'assets/images/nubdexchange_logo.png',
            prodSize: 'Full',
            numStars: 5,
            isCheckout: true,
            btnName: 'Pay Now',
          ),
        ),
      ],
    );
  }

  Widget _toShip() {
    return Column(
      children: [
        SizedBox(height: ScreenUtil().setHeight(10)),
        Padding(
          padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(10)),
          child: CustomHorizontalProductCard(
            prodName: 'NU Rain coat',
            prodPrice: '₱2,500.00',
            prodImage: 'assets/images/nubdexchange_logo.png',
            prodSize: 'M',
            numStars: 4,
            isCheckout: true,
            btnName: 'Contact Seller',
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(10)),
          child: CustomHorizontalProductCard(
            prodName: 'Webcam 1080p',
            prodPrice: '₱1,200.00',
            prodImage: 'assets/images/nubdexchange_logo.png',
            prodSize: 'N/A',
            numStars: 4,
            isCheckout: true,
            btnName: 'Contact Seller',
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(10)),
          child: CustomHorizontalProductCard(
            prodName: 'Laptop Stand',
            prodPrice: '₱800.00',
            prodImage: 'assets/images/nubdexchange_logo.png',
            prodSize: 'N/A',
            numStars: 5,
            isCheckout: true,
            btnName: 'Contact Seller',
          ),
        ),
      ],
    );
  }

  Widget _toReceived() {
    return Column(
      children: [
        SizedBox(height: ScreenUtil().setHeight(10)),
        Padding(
          padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(10)),
          child: CustomHorizontalProductCard(
            prodName: 'NU Pants',
            prodPrice: '₱1,500.00',
            prodImage: 'assets/images/nubdexchange_logo.png',
            prodSize: 'N/A',
            numStars: 4,
            isCheckout: true,
            btnName: 'Rate Now',
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(10)),
          child: CustomHorizontalProductCard(
            prodName: 'NU PE Shirt',
            prodPrice: '₱2,000.00',
            prodImage: 'assets/images/nubdexchange_logo.png',
            prodSize: 'N/A',
            numStars: 5,
            isCheckout: true,
            btnName: 'Rate Now',
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(10)),
          child: CustomHorizontalProductCard(
            prodName: 'Desk Mat',
            prodPrice: '₱500.00',
            prodImage: 'assets/images/nubdexchange_logo.png',
            prodSize: 'XL',
            numStars: 5,
            isCheckout: true,
            btnName: 'Rate Now',
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: ScreenUtil().setHeight(10)),
          child: CustomHorizontalProductCard(
            prodName: 'Cable Organizer',
            prodPrice: '₱200.00',
            prodImage: 'assets/images/nubdexchange_logo.png',
            prodSize: 'N/A',
            numStars: 4,
            isCheckout: true,
            btnName: 'Rate Now',
          ),
        ),
      ],
    );
  }
}