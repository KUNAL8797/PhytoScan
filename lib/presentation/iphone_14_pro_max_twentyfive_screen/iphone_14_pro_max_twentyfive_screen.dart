import 'package:flutter/material.dart';
import 'package:mohit_s_application17/core/app_export.dart';
import 'package:mohit_s_application17/widgets/custom_icon_button.dart';

class Iphone14ProMaxTwentyfiveScreen extends StatefulWidget {
  const Iphone14ProMaxTwentyfiveScreen({Key? key}) : super(key: key);

  @override
  State<Iphone14ProMaxTwentyfiveScreen> createState() =>
      _Iphone14ProMaxTwentyfiveScreenState();
}

class _Iphone14ProMaxTwentyfiveScreenState
    extends State<Iphone14ProMaxTwentyfiveScreen> {
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
                            imagePath: ImageConstant.imgRectangle403,
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
                          horizontal: 13.h, vertical: 17.v),
                      decoration: AppDecoration.outlineSecondaryContainer
                          .copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder30),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Padding(
                            padding: EdgeInsets.only(left: 12.h, right: 22.h),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(bottom: 3.v),
                                      child: Text("Rose Plant",
                                          style: theme.textTheme.displaySmall)),
                                  CustomIconButton(
                                      height: 50.adaptSize,
                                      width: 50.adaptSize,
                                      margin: EdgeInsets.only(top: 9.v),
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
                                left: 16.h, top: 27.v, right: 16.h),
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
                                    EdgeInsets.only(top: 15.v, right: 37.h),
                                child: Row(children: [
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Biological Name:",
                                            style: theme.textTheme.titleLarge),
                                        SizedBox(height: 53.v),
                                        Text("Uses:",
                                            style: theme.textTheme.titleLarge),
                                        SizedBox(height: 52.v),
                                        Text("Medical Use:",
                                            style: theme.textTheme.titleLarge),
                                        SizedBox(height: 52.v),
                                        Text("Harmful Effect:",
                                            style: theme.textTheme.titleLarge),
                                        SizedBox(height: 56.v),
                                        Text("Price:",
                                            style: theme.textTheme.titleLarge)
                                      ]),
                                  Padding(
                                      padding: EdgeInsets.only(left: 17.h),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("Rose rubiginosa",
                                                style: CustomTextStyles
                                                    .titleLargePrimaryContainer),
                                            SizedBox(height: 18.v),
                                            SizedBox(
                                                width: 186.h,
                                                child: Text(
                                                    "It is useful as blood purifier",
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: CustomTextStyles
                                                        .titleLargePrimaryContainer_1)),
                                            SizedBox(height: 40.v),
                                            SizedBox(
                                                width: 181.h,
                                                child: Text(
                                                    "They are anti-depressant and anti-spasmodic",
                                                    maxLines: 3,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: CustomTextStyles
                                                        .titleLargePrimaryContainer)),
                                            SizedBox(height: 18.v),
                                            SizedBox(
                                                width: 186.h,
                                                child: Text(
                                                    "Might cause burning,stinging and redness",
                                                    maxLines: 3,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: CustomTextStyles
                                                        .titleLargePrimaryContainer)),
                                            SizedBox(height: 7.v),
                                            Text("300Rs",
                                                style: CustomTextStyles
                                                    .titleLargePrimaryContainer_1)
                                          ]))
                                ]))),
                        Container(
                            margin: EdgeInsets.fromLTRB(14.h, 37.v, 14.h, 14.v),
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
