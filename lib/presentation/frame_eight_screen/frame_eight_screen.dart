import 'package:flutter/material.dart';
import 'package:mohit_s_application17/core/app_export.dart';
import 'package:mohit_s_application17/pages/login_page.dart';

class FrameEightScreen extends StatelessWidget {
  const FrameEightScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 433.h,
          padding: EdgeInsets.symmetric(horizontal: 2.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 316.0,
                width: 433.0,
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle2,
                      height: 316.0,
                      width: 433.0,
                      alignment: Alignment.center,
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgArrowleft,
                      height: 30.0,
                      width: 30.0,
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(left: 28.0, top: 17.0),
                      onTap: () {
                        //
                        main(context);
                      },
                    ),
                  ],
                ),
              ),
              Spacer(),
              Text(
                "Welcome Back",
                style: theme.textTheme.displayMedium,
              ),
              SizedBox(height: 2.v),
              Text(
                "Login in to your account",
                style: CustomTextStyles.headlineSmallBlack90001_1,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 76.v,
                  right: 10.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                          right: 6.h,
                          bottom: 1.v,
                        ),
                        child: Column(
                          children: [
                            CustomImageView(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginPage()));
                              },
                              imagePath: ImageConstant.imgEllipse1,
                              height: 162.v,
                              width: 155.h,
                              radius: BorderRadius.circular(
                                86.h,
                              ),
                            ),
                            SizedBox(height: 18.v),
                            Text(
                              "Consumer",
                              style: theme.textTheme.headlineSmall,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 6.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            CustomImageView(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginPage()));
                              },
                              imagePath: ImageConstant.imgEllipse2,
                              height: 162.v,
                              width: 155.h,
                              radius: BorderRadius.circular(
                                86.h,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 17.v,
                                right: 41.h,
                              ),
                              child: Text(
                                "Trader",
                                style: theme.textTheme.headlineSmall,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  main(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProMaxOneScreen);
  }
}
