import 'package:flutter/material.dart';
import 'package:mohit_s_application17/core/app_export.dart';
import 'package:mohit_s_application17/widgets/custom_elevated_button.dart';

class Iphone14ProMaxOneScreen extends StatelessWidget {
  const Iphone14ProMaxOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgIphone14promax),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(horizontal: 5.h),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Spacer(),
                          Container(
                              width: 339.h,
                              margin: EdgeInsets.only(
                                  left: 5.h, right: 75.h, bottom: 20.h),
                              child: Text("Home is Where \nMy Plants are",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles
                                      .displayMediumInriaSerifOnPrimaryContainer)),
                          Container(
                              width: 387.h,
                              margin: EdgeInsets.only(
                                  top: 9.v, right: 32.h, bottom: 10.h),
                              child: Text(
                                  "There are many variation passages but the majority have suffered",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles
                                      .headlineSmallInriaSerifOnPrimaryContainer)),
                          CustomElevatedButton(
                              text: "Get Started",
                              margin: EdgeInsets.only(
                                  left: 57.h, top: 15.v, right: 57.h),
                              onTap: () {
                                onTapGetstarted(context);
                              },
                              alignment: Alignment.center),
                          SizedBox(
                            height: 40,
                          )
                        ])))));
  }

  /// Navigates to the frameEightScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the frameEightScreen.
  onTapGetstarted(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.frameEightScreen);
  }
}
