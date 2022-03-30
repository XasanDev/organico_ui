import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:organico/core/constants/colors_constant.dart';
import 'package:organico/core/constants/fonts_constant.dart';
import 'package:organico/core/constants/padding_margin_const.dart';
import 'package:organico/core/constants/size_constant.dart';
import 'package:organico/widgets/app_bar_widget.dart';

class CouponsPage extends StatelessWidget {
  const CouponsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarW.appBar(
        context,
        title: "Your Coupon",
      ),
      body: Padding(
        padding: PaddingMarginConst.allPM,
        child: Column(
          children: <Widget>[
            ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(SizeConst.width(12)),
              ),
              tileColor: ColorsConst.pGreen.withOpacity(0.15),
              leading: SvgPicture.asset("assets/images/coupon.svg"),
              title: Text(
                "15% Discount all item",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: FontsConst.regularFont,
                  color: ColorsConst.tBlack,
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(
                "7 days remaining",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: FontsConst.smallFont,
                  color: ColorsConst.tGrey,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizeConst.hBox(20),
            ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(SizeConst.width(12)),
              ),
              tileColor: ColorsConst.pGreen.withOpacity(0.15),
              leading: SvgPicture.asset("assets/images/coupon.svg"),
              title: Text(
                "Free Shipping",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: FontsConst.regularFont,
                  color: ColorsConst.tBlack,
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(
                "7 days remaining",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: FontsConst.smallFont,
                  color: ColorsConst.tGrey,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
