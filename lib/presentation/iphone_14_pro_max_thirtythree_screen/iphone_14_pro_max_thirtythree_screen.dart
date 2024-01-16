import 'package:flutter/material.dart';
import 'package:mohit_s_application17/core/app_export.dart';
import 'package:mohit_s_application17/widgets/custom_icon_button.dart';

class Iphone14ProMaxThirtythreeScreen extends StatefulWidget {
  const Iphone14ProMaxThirtythreeScreen({Key? key}) : super(key: key);

  @override
  State<Iphone14ProMaxThirtythreeScreen> createState() =>
      _Iphone14ProMaxThirtythreeScreenState();
}

class _Iphone14ProMaxThirtythreeScreenState
    extends State<Iphone14ProMaxThirtythreeScreen> {
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
                            imagePath: ImageConstant.imgRectangle404,
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
                          horizontal: 13.h, vertical: 16.v),
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
                                      child: Text("Ashoka Plant",
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
                        SizedBox(height: 13.v),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(top: 1.v),
                                  child: Column(
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
                                      ])),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Saraca asoca",
                                        style: CustomTextStyles
                                            .titleLargePrimaryContainer),
                                    SizedBox(height: 21.v),
                                    SizedBox(
                                        width: 222.h,
                                        child: Text(
                                            "May act against cancer and used for bacterial infection.",
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .titleLargePrimaryContainer_1)),
                                    SizedBox(height: 14.v),
                                    SizedBox(
                                        width: 169.h,
                                        child: Text(
                                            "It protect the heart and help to reduce blood sugar level.",
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .titleLargePrimaryContainer)),
                                    SizedBox(height: 18.v),
                                    SizedBox(
                                        width: 223.h,
                                        child: Text(
                                            "Might cause stomach pain and digestive issues.",
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .titleLargePrimaryContainer)),
                                    SizedBox(height: 30.v),
                                    Text("200Rs",
                                        style: CustomTextStyles
                                            .titleLargePrimaryContainer_1)
                                  ])
                            ]),
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
