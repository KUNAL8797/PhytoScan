import 'package:flutter/material.dart';
import 'package:mohit_s_application17/core/app_export.dart';
import 'package:mohit_s_application17/widgets/custom_icon_button.dart';

class Iphone14ProMaxTwentysevenScreen extends StatefulWidget {
  const Iphone14ProMaxTwentysevenScreen({Key? key}) : super(key: key);

  @override
  State<Iphone14ProMaxTwentysevenScreen> createState() =>
      _Iphone14ProMaxTwentysevenScreenState();
}

class _Iphone14ProMaxTwentysevenScreenState
    extends State<Iphone14ProMaxTwentysevenScreen> {
  bool isGreen = true;
  void _toggleColor() {
    setState(() {
      isGreen = !isGreen;
    });
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: Column(children: [
                  SizedBox(
                      height: 449.v,
                      width: double.maxFinite,
                      child: Stack(alignment: Alignment.topLeft, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgRectangle40449x430,
                            height: 449.v,
                            width: 430.h,
                            radius: BorderRadius.circular(20.h),
                            alignment: Alignment.center),
                        CustomImageView(
                            svgPath: ImageConstant.imgArrowleft,
                            height: 23.v,
                            width: 13.h,
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(left: 36.h, top: 23.v),
                            onTap: () {
                              onTapImgArrowleftone(context);
                            })
                      ])),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 13.h, vertical: 20.v),
                      decoration: AppDecoration.outlineSecondaryContainer
                          .copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder30),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Padding(
                            padding: EdgeInsets.only(left: 12.h, right: 22.h),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Ashwagandha",
                                      style: theme.textTheme.displaySmall),
                                  CustomIconButton(
                                      height: 50.adaptSize,
                                      width: 50.adaptSize,
                                      margin: EdgeInsets.only(top: 5.v),
                                      padding: EdgeInsets.all(6.h),
                                      decoration:
                                          IconButtonStyleHelper.fillGreen,
                                      child: Icon(
                                        Icons.favorite,
                                        color: isGreen
                                            ? Colors.redAccent
                                            : Colors.green[900],
                                      ),
                                      onTap: () {
                                        _toggleColor();
                                      }
                                      //   child: CustomImageView(
                                      //       svgPath: ImageConstant.imgFavorite)

                                      )
                                ])),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 16.h, top: 26.v, right: 16.h),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                      child: CustomIconButton(
                                          height: 60.adaptSize,
                                          width: 60.adaptSize,
                                          margin: EdgeInsets.only(right: 22.h),
                                          padding: EdgeInsets.all(9.h),
                                          child: CustomImageView(
                                              svgPath: ImageConstant.imgDrop))),
                                  Expanded(
                                      child: CustomIconButton(
                                          height: 60.adaptSize,
                                          width: 60.adaptSize,
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 22.h),
                                          padding: EdgeInsets.all(10.h),
                                          child: CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgBrightness))),
                                  Expanded(
                                      child: CustomIconButton(
                                          height: 60.adaptSize,
                                          width: 60.adaptSize,
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 22.h),
                                          padding: EdgeInsets.all(11.h),
                                          child: CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgSignal))),
                                  Expanded(
                                      child: CustomIconButton(
                                          height: 60.adaptSize,
                                          width: 60.adaptSize,
                                          margin: EdgeInsets.only(left: 22.h),
                                          padding: EdgeInsets.all(10.h),
                                          child: CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgThermometer)))
                                ])),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding:
                                    EdgeInsets.only(top: 13.v, right: 27.h),
                                child: Row(children: [
                                  Padding(
                                      padding: EdgeInsets.only(top: 2.v),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("Biological Name:",
                                                style:
                                                    theme.textTheme.titleLarge),
                                            SizedBox(height: 53.v),
                                            Text("Uses:",
                                                style:
                                                    theme.textTheme.titleLarge),
                                            SizedBox(height: 52.v),
                                            Text("Medical Use:",
                                                style:
                                                    theme.textTheme.titleLarge),
                                            SizedBox(height: 52.v),
                                            Text("Harmful Effect:",
                                                style:
                                                    theme.textTheme.titleLarge),
                                            SizedBox(height: 56.v),
                                            Text("Price:",
                                                style:
                                                    theme.textTheme.titleLarge)
                                          ])),
                                  Padding(
                                      padding: EdgeInsets.only(left: 17.h),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("Withania Somnifera",
                                                style: CustomTextStyles
                                                    .titleLargePrimaryContainer),
                                            SizedBox(height: 21.v),
                                            SizedBox(
                                                width: 180.h,
                                                child: Text(
                                                    "Increase muscle and strength and lowers blood sugar",
                                                    maxLines: 3,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: CustomTextStyles
                                                        .titleLargePrimaryContainer)),
                                            SizedBox(height: 18.v),
                                            SizedBox(
                                                width: 180.h,
                                                child: Text(
                                                    "Enhance function of brain and nervous system",
                                                    maxLines: 3,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: CustomTextStyles
                                                        .titleLargePrimaryContainer)),
                                            SizedBox(height: 17.v),
                                            SizedBox(
                                                width: 196.h,
                                                child: Text(
                                                    "Might upset stomach,diarrhea and vomitting",
                                                    maxLines: 3,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: CustomTextStyles
                                                        .titleLargePrimaryContainer)),
                                            SizedBox(height: 3.v),
                                            Text("250Rs",
                                                style: CustomTextStyles
                                                    .titleLargePrimaryContainer_1)
                                          ]))
                                ]))),
                        Container(
                            margin: EdgeInsets.fromLTRB(14.h, 37.v, 14.h, 10.v),
                            padding: EdgeInsets.symmetric(horizontal: 23.h),
                            decoration: AppDecoration.fillErrorContainer
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder20),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: 3.v, bottom: 1.v),
                                      child: Text("Buy Now",
                                          style:
                                              theme.textTheme.headlineSmall)),
                                  CustomImageView(
                                      svgPath: ImageConstant.imgShoppingcart,
                                      height: 40.adaptSize,
                                      width: 40.adaptSize)
                                ]))
                      ]))
                ])))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapImgArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
