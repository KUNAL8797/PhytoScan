//import 'dart:js';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mohit_s_application17/core/app_export.dart';
import 'package:mohit_s_application17/widgets/app_bar/appbar_iconbutton.dart';
import 'package:mohit_s_application17/widgets/app_bar/appbar_image.dart';
import 'package:mohit_s_application17/widgets/app_bar/appbar_subtitle.dart';
import 'package:mohit_s_application17/widgets/app_bar/appbar_title.dart';
import 'package:mohit_s_application17/widgets/app_bar/custom_app_bar.dart';
import 'package:mohit_s_application17/widgets/custom_elevated_button.dart';
import 'package:mohit_s_application17/widgets/custom_icon_button.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qrscan/qrscan.dart' as scanner;
//import 'package:qr_scanner/qr_scanner.dart' as scanner;;
//import 'package:mobile_scanner/mobile_scanner_web_plugin.dart';
//import 'package:barcode_scan2/barcode_scan2.dart';
import 'package:permission_handler/permission_handler.dart';
//import 'package:qr_code_scanner/qr_code_scanner.dart' as scanner;

TextEditingController searchController = TextEditingController();
final FirebaseAuth _auth = FirebaseAuth.instance;
TextEditingController controller = TextEditingController();

Future _qrScanner() async {
  var cameraStatus = await Permission.camera.status;
  if (cameraStatus.isGranted) {
    Future<String?> qrdata = scanner.scan();
    //print(qrdata);
  } else {
    var isgrant = await Permission.camera.request();
    if (isgrant.isGranted) {
      Future<String?> qrdata = scanner.scan();
      //print(qrdata);
    }
  }
}

class Iphone14ProMaxThirteenScreen extends StatelessWidget {
  const Iphone14ProMaxThirteenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
      backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      appBar: CustomAppBar(
          leadingWidth: 90.h,
          leading: AppbarImage(
              imagePath: ImageConstant.imgRectangle8,
              margin: EdgeInsets.only(left: 15.h, bottom: 5.v, right: 10.h)),
          centerTitle: true,
          title: Column(children: [
            AppbarTitle(text: "PhytoScan"),
            AppbarSubtitle(
                text: "Find your plants ",
                margin: EdgeInsets.only(left: 19.h, right: 20.h))
          ]),
          actions: [
            Container(
              margin: EdgeInsets.only(top: 15.0, right: 15.0, left: 10.0),
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xffe0efe2)),
              child: IconButton(
                //svgPath: ImageConstant.imgCar,
                //margin: EdgeInsets.fromLTRB(6.h, 17.v, 15.h, 22.v),
                icon: Icon(Icons.qr_code_scanner_rounded),
                onPressed: () async {
                  await _qrScanner();
                },
                tooltip: "Scan",
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15.0, right: 15.0),
              width: 40.0,
              height: 40.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color(0xffe0efe2),
              ),
              child: IconButton(
                onPressed: () {
                  onTap(context);
                },
                tooltip: "Logout",
                icon: Icon(Icons.account_circle_rounded),
                // color: Color(0xffe0efe2),
              ),
            )
          ]),
      body: Container(
          width: 423.h,
          padding: EdgeInsets.symmetric(vertical: 15.v),
          child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
            SizedBox(height: 19.v),
            Expanded(
                child: SingleChildScrollView(
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 14.h, right: 14.h, bottom: 5.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        // Padding(
                                        //     padding: EdgeInsets.only(top: 8.v),
                                        //     child: Text(
                                        //         "Search Your plants Here",
                                        //         style: CustomTextStyles
                                        //             .titleLargeGreen900)),
                                        CustomIconButton(
                                            height: 36.adaptSize,
                                            width: 36.adaptSize,
                                            // margin: EdgeInsets.only(left: 15.h),
                                            //padding: EdgeInsets.all(6.h),
                                            decoration:
                                                IconButtonStyleHelper.fillGray,
                                            child: IconButton(
                                              padding: EdgeInsets.all(0.1.h),
                                              onPressed: () {
                                                searchController.clear();
                                                showSearch(
                                                    context: context,
                                                    delegate:
                                                        CustomSearchdelegate());
                                              },
                                              icon: Icon(
                                                Icons.search,
                                                color: Colors.grey.shade600,
                                              ),
                                            )),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top: 8.v, left: 4.h),
                                            child: Text(
                                                "Search Your plants Here",
                                                style: CustomTextStyles
                                                    .titleLargeGreen900)),
                                      ])),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 16.h, top: 21.v),
                                  child: Text("My plants",
                                      style: CustomTextStyles
                                          .headlineMediumOnPrimary)),
                              Container(
                                  margin:
                                      EdgeInsets.only(top: 2.v, right: 18.h),
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 3.h),
                                  decoration: AppDecoration.fillGreen.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder25),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle13,
                                            height: 137.v,
                                            width: 160.h,
                                            radius:
                                                BorderRadius.circular(25.h)),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top: 15.v,
                                                right: 7.h,
                                                bottom: 15.v),
                                            child: Column(children: [
                                              Text("Aloe-vera",
                                                  style: CustomTextStyles
                                                      .headlineSmallGreen90001),
                                              SizedBox(height: 1.v),
                                              Text("High water content",
                                                  style: theme
                                                      .textTheme.bodyLarge),
                                              SizedBox(height: 14.v),
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    CustomIconButton(
                                                        height: 32.adaptSize,
                                                        width: 32.adaptSize,
                                                        padding:
                                                            EdgeInsets.all(4.h),
                                                        decoration:
                                                            IconButtonStyleHelper
                                                                .fillGreenTL16,
                                                        child: CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgDrop)),
                                                    CustomIconButton(
                                                        height: 32.adaptSize,
                                                        width: 32.adaptSize,
                                                        margin: EdgeInsets.only(
                                                            left: 13.h),
                                                        padding:
                                                            EdgeInsets.all(4.h),
                                                        decoration:
                                                            IconButtonStyleHelper
                                                                .fillGreenTL16,
                                                        child: CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgBrightness)),
                                                    CustomIconButton(
                                                        height: 32.adaptSize,
                                                        width: 32.adaptSize,
                                                        margin: EdgeInsets.only(
                                                            left: 13.h),
                                                        padding:
                                                            EdgeInsets.all(4.h),
                                                        decoration:
                                                            IconButtonStyleHelper
                                                                .fillGreenTL16,
                                                        child: CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgSignal)),
                                                    CustomIconButton(
                                                        height: 32.adaptSize,
                                                        width: 32.adaptSize,
                                                        margin: EdgeInsets.only(
                                                            left: 13.h),
                                                        padding:
                                                            EdgeInsets.all(4.h),
                                                        decoration:
                                                            IconButtonStyleHelper
                                                                .fillGreenTL16,
                                                        child: CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgPhoto))
                                                  ])
                                            ]))
                                      ])),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 8.h, top: 46.v),
                                  child: Text("Popular Plants",
                                      style: theme.textTheme.headlineLarge)),
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 7.v, right: 3.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        GestureDetector(
                                            onTap: () {
                                              onTapStackview2(context);
                                            },
                                            child: SizedBox(
                                                height: 351.v,
                                                width: 185.h,
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Container(
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          32.h),
                                                              decoration: AppDecoration
                                                                  .fillErrorContainer
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder25),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    Container(
                                                                        height: 173
                                                                            .v,
                                                                        width: 121
                                                                            .h,
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                theme.colorScheme.onPrimaryContainer.withOpacity(1),
                                                                            borderRadius: BorderRadius.vertical(bottom: Radius.circular(50.h)))),
                                                                    SizedBox(
                                                                        height:
                                                                            27.v),
                                                                    Text(
                                                                        "Tulsi",
                                                                        style: theme
                                                                            .textTheme
                                                                            .headlineMedium)
                                                                  ]))),
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgTremovebgpreview,
                                                          height: 232.v,
                                                          width: 112.h,
                                                          alignment: Alignment
                                                              .topCenter)
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapStackviewone(context);
                                            },
                                            child: Container(
                                                height: 314.v,
                                                width: 185.h,
                                                margin:
                                                    EdgeInsets.only(top: 37.v),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topRight,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Container(
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          32.h),
                                                              decoration: AppDecoration
                                                                  .fillErrorContainer
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder25),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    Container(
                                                                        height: 173
                                                                            .v,
                                                                        width: 121
                                                                            .h,
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                theme.colorScheme.onPrimaryContainer.withOpacity(1),
                                                                            borderRadius: BorderRadius.vertical(bottom: Radius.circular(50.h)))),
                                                                    SizedBox(
                                                                        height:
                                                                            27.v),
                                                                    Text("Mint",
                                                                        style: theme
                                                                            .textTheme
                                                                            .headlineMedium)
                                                                  ]))),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgM1,
                                                          height: 223.v,
                                                          width: 132.h,
                                                          alignment: Alignment
                                                              .topRight,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  right: 21.h))
                                                    ])))
                                      ])),
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 35.v, right: 3.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        GestureDetector(
                                            onTap: () {
                                              onTapStackviewtwo(context);
                                            },
                                            child: Container(
                                                height: 317.v,
                                                width: 185.h,
                                                margin:
                                                    EdgeInsets.only(top: 3.v),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Container(
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          11.h),
                                                              decoration: AppDecoration
                                                                  .fillErrorContainer
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder25),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    Container(
                                                                        height: 173
                                                                            .v,
                                                                        width: 121
                                                                            .h,
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                theme.colorScheme.onPrimaryContainer.withOpacity(1),
                                                                            borderRadius: BorderRadius.vertical(bottom: Radius.circular(50.h)))),
                                                                    SizedBox(
                                                                        height:
                                                                            26.v),
                                                                    Text(
                                                                        "Lemon Grass",
                                                                        style: theme
                                                                            .textTheme
                                                                            .headlineMedium)
                                                                  ]))),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgG1,
                                                          height: 198.v,
                                                          width: 121.h,
                                                          alignment: Alignment
                                                              .topCenter)
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapStackviewthree(context);
                                            },
                                            child: SizedBox(
                                                height: 320.v,
                                                width: 185.h,
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Container(
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          27.h),
                                                              decoration: AppDecoration
                                                                  .fillErrorContainer
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder25),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    Container(
                                                                        height: 173
                                                                            .v,
                                                                        width: 121
                                                                            .h,
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                theme.colorScheme.onPrimaryContainer.withOpacity(1),
                                                                            borderRadius: BorderRadius.vertical(bottom: Radius.circular(50.h)))),
                                                                    SizedBox(
                                                                        height:
                                                                            27.v),
                                                                    Text(
                                                                        "Coriander",
                                                                        style: theme
                                                                            .textTheme
                                                                            .headlineMedium)
                                                                  ]))),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgCo1,
                                                          height: 201.v,
                                                          width: 121.h,
                                                          alignment: Alignment
                                                              .topCenter)
                                                    ])))
                                      ])),
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 11.v, right: 3.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        GestureDetector(
                                            onTap: () {
                                              onTapStackviewfour(context);
                                            },
                                            child: Container(
                                                height: 332.v,
                                                width: 185.h,
                                                margin:
                                                    EdgeInsets.only(top: 12.v),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Container(
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          5.h),
                                                              decoration: AppDecoration
                                                                  .fillErrorContainer
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder25),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    Container(
                                                                        height: 173
                                                                            .v,
                                                                        width: 121
                                                                            .h,
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                theme.colorScheme.onPrimaryContainer.withOpacity(1),
                                                                            borderRadius: BorderRadius.vertical(bottom: Radius.circular(50.h)))),
                                                                    SizedBox(
                                                                        height:
                                                                            2.v),
                                                                    Text(
                                                                        "Ashwagandha",
                                                                        style: theme
                                                                            .textTheme
                                                                            .headlineMedium),
                                                                    SizedBox(
                                                                        height:
                                                                            24.v)
                                                                  ]))),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgAh1,
                                                          height: 213.v,
                                                          width: 106.h,
                                                          alignment: Alignment
                                                              .topCenter)
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapStackviewfive(context);
                                            },
                                            child: SizedBox(
                                                height: 344.v,
                                                width: 185.h,
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Container(
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          22.h),
                                                              decoration: AppDecoration
                                                                  .fillErrorContainer
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder25),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    Container(
                                                                        height: 173
                                                                            .v,
                                                                        width: 121
                                                                            .h,
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                theme.colorScheme.onPrimaryContainer.withOpacity(1),
                                                                            borderRadius: BorderRadius.vertical(bottom: Radius.circular(50.h)))),
                                                                    SizedBox(
                                                                        height:
                                                                            3.v),
                                                                    Text(
                                                                        "Eucalyptus",
                                                                        style: theme
                                                                            .textTheme
                                                                            .headlineMedium),
                                                                    SizedBox(
                                                                        height:
                                                                            23.v)
                                                                  ]))),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgE1,
                                                          height: 225.v,
                                                          width: 121.h,
                                                          alignment: Alignment
                                                              .topCenter)
                                                    ])))
                                      ])),
                              Padding(
                                  padding: EdgeInsets.only(right: 3.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        GestureDetector(
                                            onTap: () {
                                              ontappp(context);
                                            },
                                            child: Container(
                                                height: 357.v,
                                                width: 185.h,
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Container(
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          32.h),
                                                              decoration: AppDecoration
                                                                  .fillErrorContainer
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder25),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    Container(
                                                                        height: 173
                                                                            .v,
                                                                        width: 121
                                                                            .h,
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                theme.colorScheme.onPrimaryContainer.withOpacity(1),
                                                                            borderRadius: BorderRadius.vertical(bottom: Radius.circular(50.h)))),
                                                                    SizedBox(
                                                                        height:
                                                                            2.v),
                                                                    Text(
                                                                        "Jasmine",
                                                                        style: theme
                                                                            .textTheme
                                                                            .headlineMedium)
                                                                  ]))),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgJ1,
                                                          height: 236.v,
                                                          width: 141.h,
                                                          alignment: Alignment
                                                              .topCenter)
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapStackviewseven(context);
                                            },
                                            child: Container(
                                                height: 342.v,
                                                width: 185.h,
                                                margin:
                                                    EdgeInsets.only(top: 15.v),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Container(
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          32.h),
                                                              decoration: AppDecoration
                                                                  .fillErrorContainer
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder25),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    Container(
                                                                        height: 173
                                                                            .v,
                                                                        width: 121
                                                                            .h,
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                theme.colorScheme.onPrimaryContainer.withOpacity(1),
                                                                            borderRadius: BorderRadius.vertical(bottom: Radius.circular(50.h)))),
                                                                    SizedBox(
                                                                        height:
                                                                            2.v),
                                                                    Text(
                                                                        "Camphor",
                                                                        style: theme
                                                                            .textTheme
                                                                            .headlineMedium),
                                                                    SizedBox(
                                                                        height:
                                                                            24.v)
                                                                  ]))),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgCa1,
                                                          height: 223.v,
                                                          width: 134.h,
                                                          alignment:
                                                              Alignment.topLeft,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 19.h))
                                                    ])))
                                      ])),
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 47.v, right: 3.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        GestureDetector(
                                            onTap: () {
                                              onTapStackvieweight(context);
                                            },
                                            child: SizedBox(
                                                height: 308.v,
                                                width: 185.h,
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Container(
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          32.h),
                                                              decoration: AppDecoration
                                                                  .fillErrorContainer
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder25),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    Container(
                                                                        height: 173
                                                                            .v,
                                                                        width: 121
                                                                            .h,
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                theme.colorScheme.onPrimaryContainer.withOpacity(1),
                                                                            borderRadius: BorderRadius.vertical(bottom: Radius.circular(50.h)))),
                                                                    SizedBox(
                                                                        height:
                                                                            27.v),
                                                                    Text(
                                                                        "Betel",
                                                                        style: theme
                                                                            .textTheme
                                                                            .headlineMedium)
                                                                  ]))),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgB1,
                                                          height: 189.v,
                                                          width: 117.h,
                                                          alignment: Alignment
                                                              .topCenter)
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapStackviewnine(context);
                                            },
                                            child: Container(
                                                height: 294.v,
                                                width: 185.h,
                                                margin:
                                                    EdgeInsets.only(top: 14.v),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Container(
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          32.h),
                                                              decoration: AppDecoration
                                                                  .fillErrorContainer
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder25),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    Container(
                                                                        height: 173
                                                                            .v,
                                                                        width: 121
                                                                            .h,
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                theme.colorScheme.onPrimaryContainer.withOpacity(1),
                                                                            borderRadius: BorderRadius.vertical(bottom: Radius.circular(50.h)))),
                                                                    SizedBox(
                                                                        height:
                                                                            27.v),
                                                                    Text(
                                                                        "Ashoka",
                                                                        style: theme
                                                                            .textTheme
                                                                            .headlineMedium)
                                                                  ]))),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgAs1,
                                                          height: 192.v,
                                                          width: 113.h,
                                                          alignment:
                                                              Alignment.topLeft,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 32.h))
                                                    ])))
                                      ])),
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 37.v, right: 3.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        GestureDetector(
                                            onTap: () {
                                              onTapStackviewten(context);
                                            },
                                            child: Container(
                                                height: 309.v,
                                                width: 185.h,
                                                margin:
                                                    EdgeInsets.only(top: 9.v),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Container(
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          32.h),
                                                              decoration: AppDecoration
                                                                  .fillErrorContainer
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder25),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    Container(
                                                                        height: 173
                                                                            .v,
                                                                        width: 121
                                                                            .h,
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                theme.colorScheme.onPrimaryContainer.withOpacity(1),
                                                                            borderRadius: BorderRadius.vertical(bottom: Radius.circular(50.h)))),
                                                                    SizedBox(
                                                                        height:
                                                                            26.v),
                                                                    Text("Rose",
                                                                        style: theme
                                                                            .textTheme
                                                                            .headlineMedium)
                                                                  ]))),
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .img3437957f2ddf091,
                                                          height: 166.v,
                                                          width: 155.h,
                                                          alignment: Alignment
                                                              .topCenter)
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapStackview3(context);
                                            },
                                            child: SizedBox(
                                                height: 318.v,
                                                width: 185.h,
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Container(
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          32.h),
                                                              decoration: AppDecoration
                                                                  .fillErrorContainer
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder25),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    Container(
                                                                        height: 173
                                                                            .v,
                                                                        width: 121
                                                                            .h,
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                theme.colorScheme.onPrimaryContainer.withOpacity(1),
                                                                            borderRadius: BorderRadius.vertical(bottom: Radius.circular(50.h)))),
                                                                    SizedBox(
                                                                        height:
                                                                            27.v),
                                                                    Text(
                                                                        "Aralia",
                                                                        style: theme
                                                                            .textTheme
                                                                            .headlineMedium)
                                                                  ]))),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgA1,
                                                          height: 199.v,
                                                          width: 150.h,
                                                          alignment: Alignment
                                                              .topCenter)
                                                    ])))
                                      ])),
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 34.v, right: 3.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        GestureDetector(
                                            onTap: () {
                                              onTapStackview4(context);
                                            },
                                            child: SizedBox(
                                                height: 321.v,
                                                width: 185.h,
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Container(
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          32.h),
                                                              decoration: AppDecoration
                                                                  .fillErrorContainer
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder25),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    Container(
                                                                        height: 173
                                                                            .v,
                                                                        width: 121
                                                                            .h,
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                theme.colorScheme.onPrimaryContainer.withOpacity(1),
                                                                            borderRadius: BorderRadius.vertical(bottom: Radius.circular(50.h)))),
                                                                    SizedBox(
                                                                        height:
                                                                            26.v),
                                                                    Text(
                                                                        "Castor",
                                                                        style: theme
                                                                            .textTheme
                                                                            .headlineMedium)
                                                                  ]))),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgC1,
                                                          height: 222.v,
                                                          width: 158.h,
                                                          alignment:
                                                              Alignment.topLeft,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 10.h))
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapStackview5(context);
                                            },
                                            child: Container(
                                                height: 296.v,
                                                width: 185.h,
                                                margin:
                                                    EdgeInsets.only(top: 25.v),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Container(
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          32.h),
                                                              decoration: AppDecoration
                                                                  .fillErrorContainer
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder25),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    Container(
                                                                        height: 173
                                                                            .v,
                                                                        width: 121
                                                                            .h,
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                theme.colorScheme.onPrimaryContainer.withOpacity(1),
                                                                            borderRadius: BorderRadius.vertical(bottom: Radius.circular(50.h)))),
                                                                    SizedBox(
                                                                        height:
                                                                            26.v),
                                                                    Text("Neem",
                                                                        style: theme
                                                                            .textTheme
                                                                            .headlineMedium)
                                                                  ]))),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgN1,
                                                          height: 230.v,
                                                          width: 121.h,
                                                          alignment: Alignment
                                                              .topCenter)
                                                    ])))
                                      ])),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 37.v, right: 3.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        GestureDetector(
                                            onTap: () {
                                              onTapStackview(context);
                                            },
                                            child: Container(
                                                height: 309.v,
                                                width: 185.h,
                                                margin:
                                                    EdgeInsets.only(top: 9.v),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Container(
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          32.h),
                                                              decoration: AppDecoration
                                                                  .fillErrorContainer
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder25),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    Container(
                                                                        height: 173
                                                                            .v,
                                                                        width: 121
                                                                            .h,
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                theme.colorScheme.onPrimaryContainer.withOpacity(1),
                                                                            borderRadius: BorderRadius.vertical(bottom: Radius.circular(50.h)))),
                                                                    SizedBox(
                                                                        height:
                                                                            26.v),
                                                                    Text(
                                                                        "Lemon",
                                                                        style: theme
                                                                            .textTheme
                                                                            .headlineMedium)
                                                                  ]))),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgLe1,
                                                          height: 166.v,
                                                          width: 155.h,
                                                          alignment: Alignment
                                                              .topCenter)
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapStackview1(context);
                                            },
                                            child: SizedBox(
                                                height: 318.v,
                                                width: 185.h,
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Container(
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          32.h),
                                                              decoration: AppDecoration
                                                                  .fillErrorContainer
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder25),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    Container(
                                                                        height: 173
                                                                            .v,
                                                                        width: 121
                                                                            .h,
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                theme.colorScheme.onPrimaryContainer.withOpacity(1),
                                                                            borderRadius: BorderRadius.vertical(bottom: Radius.circular(50.h)))),
                                                                    SizedBox(
                                                                        height:
                                                                            27.v),
                                                                    Text(
                                                                        "Heena",
                                                                        style: theme
                                                                            .textTheme
                                                                            .headlineMedium)
                                                                  ]))),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgH1,
                                                          height: 199.v,
                                                          width: 150.h,
                                                          alignment: Alignment
                                                              .topCenter)
                                                    ])))
                                      ])),
                            ]))))
          ])),
      //  Padding(
      //     padding: EdgeInsets.only(left: 44.h, right: 18.h, bottom: 15.v),
      //     child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           GestureDetector(
      //               onTap: () {
      //                 onTapStackview(context);
      //               },
      //               child: Container(
      //                   height: 307.v,
      //                   width: 125.h,
      //                   margin: EdgeInsets.only(bottom: 26.v),
      //                   child: Stack(
      //                       alignment: Alignment.topCenter,
      //                       children: [
      //                         Align(
      //                             alignment: Alignment.bottomCenter,
      //                             child: Container(
      //                                 margin: EdgeInsets.symmetric(
      //                                     horizontal: 2.h),
      //                                 decoration: AppDecoration
      //                                     .fillErrorContainer
      //                                     .copyWith(
      //                                         borderRadius:
      //                                             BorderRadiusStyle
      //                                                 .roundedBorder25),
      //                                 child: Column(
      //                                     mainAxisSize: MainAxisSize.min,
      //                                     children: [
      //                                       Container(
      //                                           height: 173.v,
      //                                           width: 121.h,
      //                                           decoration: BoxDecoration(
      //                                               color: theme
      //                                                   .colorScheme
      //                                                   .onPrimaryContainer
      //                                                   .withOpacity(1),
      //                                               borderRadius:
      //                                                   BorderRadius.vertical(
      //                                                       bottom: Radius
      //                                                           .circular(
      //                                                               50.h)))),
      //                                       Text("Lemon",
      //                                           style: theme.textTheme
      //                                               .headlineMedium)
      //                                     ]))),
      //                         CustomImageView(
      //                             imagePath: ImageConstant.imgLe1,
      //                             height: 215.v,
      //                             width: 125.h,
      //                             alignment: Alignment.topCenter)
      //                       ]))),
      //           GestureDetector(
      //               onTap: () {
      //                 onTapStackview1(context);
      //               },
      //               child: Container(
      //                   height: 318.v,
      //                   width: 185.h,
      //                   margin: EdgeInsets.only(top: 16.v),
      //                   child: Stack(
      //                       alignment: Alignment.topCenter,
      //                       children: [
      //                         Align(
      //                             alignment: Alignment.bottomCenter,
      //                             child: Container(
      //                                 padding: EdgeInsets.symmetric(
      //                                     horizontal: 32.h),
      //                                 decoration: AppDecoration
      //                                     .fillErrorContainer
      //                                     .copyWith(
      //                                         borderRadius:
      //                                             BorderRadiusStyle
      //                                                 .roundedBorder25),
      //                                 child: Column(
      //                                     mainAxisSize: MainAxisSize.min,
      //                                     children: [
      //                                       Container(
      //                                           height: 173.v,
      //                                           width: 121.h,
      //                                           decoration: BoxDecoration(
      //                                               color: theme
      //                                                   .colorScheme
      //                                                   .onPrimaryContainer
      //                                                   .withOpacity(1),
      //                                               borderRadius:
      //                                                   BorderRadius.vertical(
      //                                                       bottom: Radius
      //                                                           .circular(
      //                                                               50.h)))),
      //                                       SizedBox(height: 26.v),
      //                                       Text("Heena",
      //                                           style: theme.textTheme
      //                                               .headlineMedium)
      //                                     ]))),
      //                         CustomImageView(
      //                             imagePath: ImageConstant.imgH1,
      //                             height: 211.v,
      //                             width: 122.h,
      //                             alignment: Alignment.topCenter)
      //                       ])))
      //         ]))
    ));
  }

  /// Navigates to the iphone14ProMaxThirtyeightScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the iphone14ProMaxThirtyeightScreen.
  onTapStackview(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProMaxThirtyeightScreen);
  }

  /// Navigates to the iphone14ProMaxThirtysevenScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the iphone14ProMaxThirtysevenScreen.
  onTapStackview1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProMaxThirtysevenScreen);
  }

  /// Navigates to the iphone14ProMaxFortyScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the iphone14ProMaxFortyScreen.
  onTapStackview2(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProMaxFortyScreen);
  }

  /// Navigates to the iphone14ProMaxThirtynineScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the iphone14ProMaxThirtynineScreen.
  onTapStackviewone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProMaxThirtynineScreen);
  }

  /// Navigates to the iphone14ProMaxThirtysixScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the iphone14ProMaxThirtysixScreen.
  onTapStackviewtwo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProMaxThirtysixScreen);
  }

  /// Navigates to the iphone14ProMaxThirtyfourScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the iphone14ProMaxThirtyfourScreen.
  onTapStackviewthree(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProMaxThirtyfourScreen);
  }

  /// Navigates to the iphone14ProMaxTwentysevenScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the iphone14ProMaxTwentysevenScreen.
  onTapStackviewfour(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProMaxTwentysevenScreen);
  }

  /// Navigates to the iphone14ProMaxThirtyfiveScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the iphone14ProMaxThirtyfiveScreen.
  onTapStackviewfive(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProMaxThirtyfiveScreen);
  }

  /// Navigates to the iphone14ProMaxThirtyoneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the iphone14ProMaxThirtyoneScreen.
  onTapStackviewseven(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProMaxThirtyoneScreen);
  }

  /// Navigates to the iphone14ProMaxThirtytwoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the iphone14ProMaxThirtytwoScreen.
  onTapStackvieweight(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProMaxThirtytwoScreen);
  }

  /// Navigates to the iphone14ProMaxThirtythreeScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the iphone14ProMaxThirtythreeScreen.
  onTapStackviewnine(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProMaxThirtythreeScreen);
  }

  /// Navigates to the iphone14ProMaxTwentyfiveScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the iphone14ProMaxTwentyfiveScreen.
  onTapStackviewten(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProMaxTwentyfiveScreen);
  }

  /// Navigates to the iphone14ProMaxTwentysixScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the iphone14ProMaxTwentysixScreen.
  onTapStackview3(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProMaxTwentysixScreen);
  }

  /// Navigates to the iphone14ProMaxThirtyScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the iphone14ProMaxThirtyScreen.
  onTapStackview4(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProMaxThirtyScreen);
  }

  /// Navigates to the iphone14ProMaxFortyoneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the iphone14ProMaxFortyoneScreen.
  onTapStackview5(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProMaxFortyoneScreen);
  }

  ontappp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.iphone14ProMaxTwelveScreen);
  }

//   _logout() {
//     FirebaseAuth.instance.signOut().then((result) {
//       Navigator.of(context).pushNamedAndRemoveUntil("/login", (_) => false);
//     });
//   }
//
  onTap(BuildContext context) {
    Navigator.pushNamed(context, "/login");
  }
}

class CustomSearchdelegate extends SearchDelegate {
  List<String> searchTerms = [
    "Heena",
    "Tulsi",
    "Rose",
    "Jasmine",
    "Neem",
    "Mint",
    "Eucalyptus",
    "Castor",
    "Betel",
    "Lemon",
    "Lemon Grass",
    "Ashoka",
    "Ashwagandha",
    "Camphor",
    "Coriander",
    "Aralia"
  ];

  // first overwrite to
  // clear the search text
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.clear),
      ),
    ];
  }

  // second overwrite to pop out of search menu
  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  // third overwrite to show query result
  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  // last overwrite to show the
  // querying process at the runtime
  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];

        return ListTile(
          title: Text(result),
          onTap: () {
            if (result == "Rose") {
              Navigator.pushNamed(
                  context, AppRoutes.iphone14ProMaxTwentyfiveScreen);
            } else if (result == "Ashoka") {
              Navigator.pushNamed(
                  context, AppRoutes.iphone14ProMaxThirtythreeScreen);
            } else if (result == "Tulsi") {
              Navigator.pushNamed(context, AppRoutes.iphone14ProMaxFortyScreen);
            } else if (result == "Mint") {
              Navigator.pushNamed(
                  context, AppRoutes.iphone14ProMaxThirtynineScreen);
            } else if (result == "Neem") {
              Navigator.pushNamed(
                  context, AppRoutes.iphone14ProMaxFortyoneScreen);
            } else if (result == "Heena") {
              Navigator.pushNamed(
                  context, AppRoutes.iphone14ProMaxThirtysevenScreen);
            } else if (result == "Eucalyptus") {
              Navigator.pushNamed(
                  context, AppRoutes.iphone14ProMaxThirtyfiveScreen);
            } else if (result == "Jasmine") {
              Navigator.pushNamed(
                  context, AppRoutes.iphone14ProMaxTwelveScreen);
            } else if (result == "Castor") {
              Navigator.pushNamed(
                  context, AppRoutes.iphone14ProMaxThirtyScreen);
            } else if (result == "Lemon") {
              Navigator.pushNamed(
                  context, AppRoutes.iphone14ProMaxThirtyeightScreen);
            } else if (result == "Betel") {
              Navigator.pushNamed(
                  context, AppRoutes.iphone14ProMaxThirtytwoScreen);
            } else if (result == "Lemon Grass") {
              Navigator.pushNamed(
                  context, AppRoutes.iphone14ProMaxThirtysixScreen);
            } else if (result == "Ashwagandha") {
              Navigator.pushNamed(
                  context, AppRoutes.iphone14ProMaxTwentysevenScreen);
            } else if (result == "Camphor") {
              Navigator.pushNamed(
                  context, AppRoutes.iphone14ProMaxThirtyoneScreen);
            } else if (result == "Aralia") {
              Navigator.pushNamed(
                  context, AppRoutes.iphone14ProMaxTwentysixScreen);
            } else {
              Navigator.pushNamed(
                  context, AppRoutes.iphone14ProMaxThirtyfourScreen);
            }
          },
        );
      },
    );
  }
}
