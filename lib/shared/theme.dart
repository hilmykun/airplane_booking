part of 'shared.dart';

double defaultMargin = 24.0;
double defaultRadius = 17.0;

//Color referensi yang dipakai

Color kPrimaryColor = const Color(0xFF5c40cc);
Color kBlackColor = const Color(0xFF1f1449);
Color kWhiteColor = const Color(0xFFffffff);
Color kGreyColor = const Color(0xFF9698a9);
Color kGreenColor = const Color(0xFF0ec3ae);
Color kRedColor = const Color(0xFFeb70a5);
Color kBackgroundColor = const Color(0xFFf2f2f2);
Color kInactiveColor = const Color(0xFFdbd7ec);

//Fonts referensi yang dipakai
TextStyle blackTextStyle = GoogleFonts.poppins(
  textStyle: TextStyle(
    color: kBlackColor,
  ),
);
TextStyle whiteTextStyle = GoogleFonts.poppins(
  textStyle: TextStyle(
    color: kWhiteColor,
  ),
);
TextStyle greyTextStyle = GoogleFonts.poppins(
  textStyle: TextStyle(
    color: kGreyColor,
  ),
);
TextStyle greenTextStyle = GoogleFonts.poppins(
  textStyle: TextStyle(
    color: kGreenColor,
  ),
);
TextStyle redTextStyle = GoogleFonts.poppins(
  textStyle: TextStyle(
    color: kRedColor,
  ),
);
TextStyle purpleTextStyle = GoogleFonts.poppins(
  textStyle: TextStyle(
    color: kPrimaryColor,
  ),
);

//Textstyle

FontWeight light = FontWeight.w300;
FontWeight normal = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extrabold = FontWeight.w800;
FontWeight black = FontWeight.w900;
