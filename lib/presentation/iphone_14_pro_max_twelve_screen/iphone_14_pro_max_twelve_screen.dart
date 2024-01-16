import 'package:flutter/material.dart';
import 'package:mohit_s_application17/core/app_export.dart';
import 'package:mohit_s_application17/widgets/custom_icon_button.dart';

class Iphone14ProMaxTwelveScreen extends StatefulWidget {
  const Iphone14ProMaxTwelveScreen({Key? key}) : super(key: key);

  @override
  State<Iphone14ProMaxTwelveScreen> createState() =>
      _Iphone14ProMaxTwelveScreenState();
}

class _Iphone14ProMaxTwelveScreenState
    extends State<Iphone14ProMaxTwelveScreen> {
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
                            imagePath: ImageConstant.imgRectangle402,
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
                          horizontal: 11.h, vertical: 17.v),
                      decoration: AppDecoration.outlineSecondaryContainer
                          .copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder30),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Padding(
                            padding: EdgeInsets.only(left: 13.h, right: 23.h),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(bottom: 2.v),
                                      child: Text("Jasmine Plant",
                                          style: theme.textTheme.displaySmall)),
                                  CustomIconButton(
                                      height: 50.adaptSize,
                                      width: 50.adaptSize,
                                      margin: EdgeInsets.only(top: 8.v),
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
                                left: 17.h, top: 27.v, right: 17.h),
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
                        Padding(
                            padding: EdgeInsets.only(left: 1.h, top: 13.v),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
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
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Jasminum",
                                            style: CustomTextStyles
                                                .titleLargePrimaryContainer),
                                        SizedBox(height: 20.v),
                                        SizedBox(
                                            width: 222.h,
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text:
                                                          "It is used for Skin disease and to speed up wound healing",
                                                      style: CustomTextStyles
                                                          .titleLargePrimaryContainer20),
                                                  TextSpan(text: " ")
                                                ]),
                                                textAlign: TextAlign.left)),
                                        SizedBox(height: 15.v),
                                        SizedBox(
                                            width: 192.h,
                                            child: Text(
                                                "Liver disease (hepatitis),abdominal pain(dydentry).",
                                                maxLines: 3,
                                                overflow: TextOverflow.ellipsis,
                                                style: CustomTextStyles
                                                    .titleLargePrimaryContainer)),
                                        SizedBox(height: 17.v),
                                        SizedBox(
                                            width: 225.h,
                                            child: Text(
                                                "Might cause allergic reactions in some people.",
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: CustomTextStyles
                                                    .titleLargePrimaryContainer)),
                                        SizedBox(height: 30.v),
                                        Text("200Rs",
                                            style: CustomTextStyles
                                                .titleLargePrimaryContainer_1)
                                      ])
                                ])),
                        Container(
                            margin: EdgeInsets.fromLTRB(15.h, 37.v, 15.h, 13.v),
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
