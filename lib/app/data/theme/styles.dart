import 'package:flutter/material.dart';
import '../values/fonts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class Styles {
  Styles._privateConstructor();

  /// PlayFair
  static black24H7PlayFair(
          {String fontFamily = Fonts.playFair,
          FontWeight fontWeight = FontWeight.w700,
          double fontSize = 24.0,
          Color color = AppColors.black}) =>
      TextStyle(
          fontFamily: fontFamily,
          fontWeight: fontWeight,
          fontSize: fontSize,
          color: color);

  static white24H7PlayFair(
          {String fontFamily = Fonts.playFair,
          FontWeight fontWeight = FontWeight.w700,
          double fontSize = 24.0,
          Color color = AppColors.white}) =>
      TextStyle(
          fontFamily: fontFamily,
          fontWeight: fontWeight,
          fontSize: fontSize,
          color: color);

  static black28H6PlayFair(
          {String fontFamily = Fonts.playFair,
          FontWeight fontWeight = FontWeight.w600,
          double fontSize = 28.0,
          Color color = AppColors.black}) =>
      TextStyle(
          fontFamily: fontFamily,
          fontWeight: fontWeight,
          fontSize: fontSize,
          color: color);

  static const tsWhiteRegular18 = TextStyle(
    color: AppColors.white,
    fontWeight: FontWeight.w500,
    fontSize: 18.0,
  );

  static const tsBlackRegular16 = TextStyle(
      color: AppColors.black, fontWeight: FontWeight.w500, fontSize: 16.0);

  static const tsLightBlackRegular16 = TextStyle(
      color: AppColors.filterHeading,
      fontWeight: FontWeight.w500,
      fontSize: 16.0);

  static const tsBlackSemiBold16 = TextStyle(
      color: AppColors.black, fontWeight: FontWeight.w600, fontSize: 16.0);

  static const tsBlackRegular18 = TextStyle(
    color: AppColors.black,
    fontWeight: FontWeight.w400,
    fontSize: 18.0,
  );

  static const tsBlackPlayFair14 = TextStyle(
      color: AppColors.black,
      fontWeight: FontWeight.w500,
      fontSize: 14.0,
      fontFamily: Fonts.playFair);

  static const tsBlackRegular14 = TextStyle(
      color: AppColors.black, fontWeight: FontWeight.w500, fontSize: 14.0);

  static buttonTextStyle({required isActive, double textSize = 14}) =>
      TextStyle(
          color: isActive ? AppColors.black : AppColors.stepColor,
          fontWeight: FontWeight.w500,
          fontSize: textSize);


  static const tsPrimaryColorRegular18 =

  TextStyle(
      color: AppColors.primaryColor,
      fontWeight: FontWeight.w400,
      fontSize: 18.0,
      fontFamily: Fonts.playFair);

  static const signupLabel = TextStyle(
      fontWeight: FontWeight.w500, fontSize: 12, color: AppColors.signupLabel);

  static const signupHint = TextStyle(
      fontWeight: FontWeight.w500, fontSize: 16, color: AppColors.signupHint);

  static const signupCheckBox = TextStyle(
      fontWeight: FontWeight.w500, fontSize: 14, color: AppColors.signupLabel);

  static const loginText = TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 14,
      color: AppColors.secondaryColorDark);

  static const borderButtonText = TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 14,
      color: AppColors.secondaryColorDark);

  static const registerNow = TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 14,
      color: AppColors.secondaryColorDark);

  static const signupGenderNotSelected = TextStyle(
      fontWeight: FontWeight.w500, fontSize: 14, color: AppColors.black);
  static const signupGenderSelected = TextStyle(
      fontWeight: FontWeight.w500, fontSize: 14, color: AppColors.white);

  static const createDeactivate = TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 16,
      color: AppColors.createDeactivateText);

  ////Otp Verify
  static const loginEnter = TextStyle(
      fontWeight: FontWeight.w500, fontSize: 18, color: AppColors.black);

  static const weHave = TextStyle(
      fontWeight: FontWeight.w400, fontSize: 12, color: AppColors.black);

  static const aText = TextStyle(
      fontWeight: FontWeight.w400, fontSize: 10, color: AppColors.stepColor);

  //OTP Verified
  static const nameHeading = TextStyle(
      fontFamily: Fonts.playFair,
      fontWeight: FontWeight.w500,
      fontSize: 24,
      color: AppColors.white);

  static const verifiedPoints = TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 12,
      color: AppColors.secondaryLightColor);

  static const verifiedPointsText = TextStyle(
      fontWeight: FontWeight.w500, fontSize: 12, color: AppColors.white);

  static const primaryButtonWhiteText = TextStyle(
      fontWeight: FontWeight.w600, fontSize: 16, color: AppColors.white);

  static const primaryButtonBlueText = TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 16,
      color: AppColors.secondaryColorDark);

  static const tsGreyColorRegular14 = TextStyle(
    color: AppColors.stepColor,
    fontWeight: FontWeight.w400,
    fontSize: 14.0,
  );
  static const tsGreyColorRegular18 = TextStyle(
    color: AppColors.stepColor,
    fontWeight: FontWeight.w400,
    fontSize: 18.0,
  );

  static const textFieldErrorTextStyle = TextStyle(
    color: AppColors.primaryColor,
    fontWeight: FontWeight.w500,
    fontSize: 13,
  );

  static const tsBlackBoldRegular18 = TextStyle(
      color: AppColors.white, fontWeight: FontWeight.bold, fontSize: 18.0);

  static const tsWhiteBold18 = TextStyle(
      color: AppColors.white,
      fontWeight: FontWeight.bold,
      fontSize: 18.0,
      fontFamily: Fonts.playFair);

  static const tsWhiteBold35 = TextStyle(
      color: AppColors.white,
      fontWeight: FontWeight.w600,
      fontSize: 35.0,
      fontFamily: Fonts.playFair);

  static const tsWhiteBold26 = TextStyle(
      color: AppColors.white,
      fontWeight: FontWeight.w500,
      fontSize: 26.0,
      fontFamily: Fonts.playFair);

  static const tsWhiteBold40 = TextStyle(
      color: AppColors.white,
      fontWeight: FontWeight.w600,
      fontSize: 40.0,
      fontFamily: Fonts.playFair);

  static const tsWhiteBold36 = TextStyle(
      color: AppColors.white,
      fontWeight: FontWeight.w500,
      fontSize: 36.0,
      fontFamily: Fonts.playFair);

  static const tsWhiteBold32 = TextStyle(
      color: AppColors.white,
      fontWeight: FontWeight.w500,
      fontSize: 32.0,
      fontFamily: Fonts.playFair);

  static const tsWhiteRegularBold29 = TextStyle(
      color: AppColors.white, fontWeight: FontWeight.w500, fontSize: 29.0);

  static const tsBlackRegularBold29 = TextStyle(
      color: AppColors.black, fontWeight: FontWeight.w500, fontSize: 29.0);

  static const tsWhiteBold28 = TextStyle(
      color: AppColors.white,
      fontWeight: FontWeight.w500,
      fontSize: 28.0,
      fontFamily: Fonts.playFair);

  static const tsWhiteBold42 = TextStyle(
      color: AppColors.white,
      fontWeight: FontWeight.w500,
      fontSize: 42.0,
      fontFamily: Fonts.playFair);

  static const tsWhiteRegular13 = TextStyle(
      color: AppColors.white, fontWeight: FontWeight.w400, fontSize: 13.0);

  static const tsWhiteInter18 = TextStyle(
      color: AppColors.white,
      fontWeight: FontWeight.w400,
      fontSize: 18.0,
      fontFamily: Fonts.inter);

  static const tsWhiteInter20 = TextStyle(
    color: AppColors.white,
    fontWeight: FontWeight.w500,
    fontSize: 20.0,
  );

  static const tsWhiteInter17 = TextStyle(
      color: AppColors.white,
      fontWeight: FontWeight.w500,
      fontSize: 17.0,
      fontFamily: Fonts.inter);

  static const tsWhiteInter10 = TextStyle(
      color: AppColors.white,
      fontWeight: FontWeight.w400,
      fontSize: 10.0,
      fontFamily: Fonts.inter);

  static const tsWhiteInter14 = TextStyle(
      color: AppColors.white,
      fontWeight: FontWeight.w400,
      fontSize: 14.0,
      fontFamily: Fonts.inter);

  static final tsWhite14CallEvents = TextStyle(
      color: AppColors.white.withOpacity(0.7),
      fontWeight: FontWeight.bold,
      fontSize: 14.0);

  static const tsWhiteInter14Wt500 = TextStyle(
      color: AppColors.white,
      fontWeight: FontWeight.w500,
      fontSize: 14.0,
      fontFamily: Fonts.inter);

  static const tsWhiteInter10Wt500 = TextStyle(
    color: AppColors.white,
    fontWeight: FontWeight.w500,
    fontSize: 10.0,
  );

  static const tsWhiteInter10Wt600 = TextStyle(
    color: AppColors.white,
    fontWeight: FontWeight.w600,
    fontSize: 10.0,
  );

  static const tsDisableText14 = TextStyle(
      color: AppColors.stepColor, fontWeight: FontWeight.w500, fontSize: 14.0);

  static const tsWhiteRegular16 = TextStyle(
      color: AppColors.white, fontWeight: FontWeight.w600, fontSize: 16.0);

  static const tsBlackColorRegular40 = TextStyle(
      color: AppColors.black,
      fontWeight: FontWeight.w600,
      fontSize: 40.0,
      fontFamily: Fonts.playFair);

  static const tsBlackColorRegular48 = TextStyle(
      color: AppColors.black,
      fontWeight: FontWeight.w600,
      fontSize: 48.0,
      fontFamily: Fonts.playFair);

  static const tsBlackBold13 = TextStyle(
      color: AppColors.black,
      fontWeight: FontWeight.bold,
      fontSize: 13.0,
      fontFamily: Fonts.playFair);

  static const tsBlackBold18 = TextStyle(
      color: AppColors.black,
      fontWeight: FontWeight.bold,
      fontSize: 18.0,
      fontFamily: Fonts.playFair);

  static const tsBlackBold26 = TextStyle(
      color: AppColors.black,
      fontWeight: FontWeight.w600,
      fontSize: 26.0,
      fontFamily: Fonts.playFair);

  static const tsBlackBold28 = TextStyle(
      color: AppColors.black,
      fontWeight: FontWeight.bold,
      fontSize: 28.0,
      fontFamily: Fonts.playFair);

  static const tsBlackBold32 = TextStyle(
      color: AppColors.black,
      fontWeight: FontWeight.w600,
      fontSize: 32.0,
      fontFamily: Fonts.playFair);

  static const tsBlackRegular9 =
      TextStyle(color: AppColors.black, fontSize: 9.0);

  static const tsBlackRegular10 =
      TextStyle(color: AppColors.black, fontSize: 10.0);

  static const tsBlackInter10 = TextStyle(
      color: AppColors.black,
      fontWeight: FontWeight.w400,
      fontSize: 10.0,
      fontFamily: Fonts.inter);

  static const tsGreyRegular12 = TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.w400,
      fontSize: 12.0,
      fontFamily: Fonts.playFair);

  static const tsGrey12 = TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.w500,
      fontSize: 12.0,
      fontFamily: Fonts.inter);

  static const tsBlack45Inter12 = TextStyle(
      color: Colors.black45,
      fontWeight: FontWeight.w500,
      fontSize: 12.0,
      fontFamily: Fonts.inter);

  static const tsBlack45Inter14 = TextStyle(
      color: Colors.black45,
      fontWeight: FontWeight.w500,
      fontSize: 14.0,
      fontFamily: Fonts.inter);

  static const tsBlackInter14 = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w500,
      fontSize: 14.0,
      fontFamily: Fonts.inter);

  static const tsGreyRegular13 = TextStyle(
      color: Colors.grey, fontWeight: FontWeight.w400, fontSize: 13.0);

  static const tsGreyInter13 = TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.w400,
      fontSize: 13.0,
      fontFamily: Fonts.inter);

  static const tsGreyInter14_Half = TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.w400,
      fontSize: 14.5,
      fontFamily: Fonts.inter);

  static const tsGreyInter14Height = TextStyle(
      color: AppColors.greyDark,
      fontWeight: FontWeight.w400,
      fontSize: 14,
      height: 1.7,
      fontFamily: Fonts.inter);

  static const tsGreyInter11 = TextStyle(
      color: AppColors.greyDark,
      fontWeight: FontWeight.w400,
      fontSize: 11,
      fontFamily: Fonts.inter,
  );

  static const tsGreyInter12 = TextStyle(
      color: AppColors.greyDark,
      fontWeight: FontWeight.w400,
      fontSize: 12,
      fontFamily: Fonts.inter,
  );

  static const tsBlackInter14_Half = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );

  static const tsGreyRegular16 = TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.w400,
      fontSize: 16.0,
      fontFamily: Fonts.playFair);

  static const tsBlack87Inter16 = TextStyle(
      color: Colors.black87,
      fontWeight: FontWeight.w300,
      fontSize: 16.0,
      fontFamily: Fonts.inter);

  static const tsBlack87Inter15 = TextStyle(
      color: Colors.black87,
      fontWeight: FontWeight.w400,
      fontSize: 15.0,
      fontFamily: Fonts.inter);

  static const tsBlack500Inter15 = TextStyle(
      color: Colors.black87,
      fontWeight: FontWeight.w500,
      fontSize: 15.0,
      fontFamily: Fonts.inter);

  static final tsGrey87Inter15 = TextStyle(
      color: AppColors.black.withOpacity(.6),
      fontWeight: FontWeight.w400,
      fontSize: 15.0,
      fontFamily: Fonts.inter);

  static const tsBlack45Inter16 = TextStyle(
      color: Colors.black45,
      fontWeight: FontWeight.w300,
      fontSize: 16.0,
      fontFamily: Fonts.inter);

  static const tsBlackInter18 = TextStyle(
      color: AppColors.black,
      fontWeight: FontWeight.w500,
      fontSize: 18.0,
      fontFamily: Fonts.inter);

  static const tsBlackInter12 = TextStyle(
      color: AppColors.black,
      fontWeight: FontWeight.w500,
      fontSize: 12.0,
      fontFamily: Fonts.inter);

  ///propbook
  static const propbookHeading = TextStyle(
      fontFamily: 'playfair', fontWeight: FontWeight.w500, fontSize: 18);
  static const tabStyle = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 12.0,
  );

  ///component
  static const priceStyle =
      TextStyle(fontWeight: FontWeight.w600, fontSize: 18);
  static const matchStyle = TextStyle(
      fontWeight: FontWeight.w600, fontSize: 10, color: AppColors.white);
  static const addToCompare = TextStyle(
      fontWeight: FontWeight.w700, fontSize: 10, color: AppColors.white);
  static const justScorz = TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 8,
      color: AppColors.nonWishListedHeart);
  static const addressStyle = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 10,
      color: AppColors.nonWishListedHeart);
  static final dealerstyle = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 10,
      color: AppColors.nonWishListedHeart.withOpacity(.4));
  static const connectWithAgent = TextStyle(
      fontWeight: FontWeight.w500, fontSize: 8, color: AppColors.black);

  ///PropertyDetails
  static const propertyDetailsHeading = TextStyle(
      fontWeight: FontWeight.w600, fontSize: 16, color: AppColors.black);

  static const unitSpecificationType = TextStyle(
      fontWeight: FontWeight.w700, fontSize: 14, color: AppColors.grey);

  static const downloadText =
      TextStyle(fontWeight: FontWeight.w600, fontSize: 14);

  static const unitSpecificationDesc = TextStyle(
      color: AppColors.secondaryColorDark,
      fontWeight: FontWeight.w400,
      fontSize: 15.0,
      fontFamily: Fonts.inter);
  static const reviewHeading = TextStyle(
      fontSize: 24, fontWeight: FontWeight.w700, fontFamily: Fonts.playFair);

  ///Preference
  static const navbarTitle = TextStyle(
      fontFamily: Fonts.inter, fontWeight: FontWeight.w400, fontSize: 17);

  static const filterzz = TextStyle(
      color: AppColors.black,
      fontFamily: Fonts.inter,
      fontWeight: FontWeight.w300,
      fontSize: 14);

  static mustHaveButtonTextStyle({isActive}) => TextStyle(
      color: isActive ? AppColors.black : AppColors.stepColor,
      fontWeight: FontWeight.w500,
      fontSize: 12);

  ///error screen
  static const errorStatusCode = TextStyle(
      fontSize: 24, fontWeight: FontWeight.w700, fontFamily: Fonts.playFair);
  static const errorTitle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
  );

  ///imageView
  static const imageViewAppBarTitle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
    fontFamily: Fonts.playFair,
  );

  ///connect with agent
  static const connectwithAgentRedText = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: AppColors.primaryColor,
      height: 1.4);

  static const pleaseWait = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      fontFamily: Fonts.playFair,
      height: 2.6);
  static const time = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );

  ///book visit
  static const bookVisitGreyHeading = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: AppColors.bookVisitHeading,
      height: 1.9);

  ///compare property
  static const tsAppBarTitle = TextStyle(
    fontSize: 17,
    fontFamily: Fonts.playFair,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
  );

  static const tsGrey125Inter11 = TextStyle(
      color: AppColors.grey125,
      fontWeight: FontWeight.w400,
      fontSize: 12.5,
      fontFamily: Fonts.inter);

  static const tsGreen17Inter = TextStyle(
    fontSize: 18,
    fontFamily: Fonts.inter,
    fontWeight: FontWeight.w500,
    color: AppColors.green125,
  );

  static const tsBlackInter14W300 = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w400,
      fontSize: 14.0,
      fontFamily: Fonts.inter);

  static const tsGrey125Inter16 = TextStyle(
      color: AppColors.grey125,
      fontWeight: FontWeight.w600,
      fontSize: 16.0,
      fontFamily: Fonts.inter);

  static const tsDeepBlackInter18 = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w500,
      fontSize: 18.0,
      fontFamily: Fonts.inter);

  static const tsBlackInter16 = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w300,
      fontSize: 16.0,
      fontFamily: Fonts.inter);
  static const tsBlackInter11 = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w500,
      fontSize: 11.0,
      fontFamily: Fonts.inter);

  static const tsPrimaryBold18PlayFair = TextStyle(
      color: AppColors.primaryTextColor,
      fontWeight: FontWeight.bold,
      fontSize: 18,
      fontFamily: Fonts.playFair);

  static const tsBlueMedium = TextStyle(
      color: AppColors.secondaryColorDark, fontWeight: FontWeight.w500);

  static const tsPrimaryTextMedium = TextStyle(
    fontWeight: FontWeight.w500,
    color: AppColors.primaryTextColor,
  );

  static const tsTertiaryText12 = TextStyle(
    color: AppColors.tertiaryText,
    fontSize: 12,
  );
  static const tsSecondaryMedium16 = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColors.secondaryTextColor);
  static const tsSecondaryText = TextStyle(color: AppColors.drawerTextColor);
}
