import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:organico/sizeof/size_config.dart';
import 'package:organico/widgets/widgets.dart';

class Forgot extends StatelessWidget {
  const Forgot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AppBa(
              //leading: Icon(Icons.arrow_back_ios),
              text: "Forgot Password",
            ),
          ),
          Container(
            height: getProportionScreenHeight(440),
            width: double.infinity,
            color: Colors.redAccent,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 18.0,
              top: 25.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Enter Your phone number",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  """  We need to verify you. We will send you a one-time
  authorization code.""",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, top: 30, right: 18.0),
            child: Container(
              height: getProportionScreenHeight(75),
              width: getProportionScreenWidth(355),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.0),
              ),
              child: IntlPhoneField(
                decoration: InputDecoration(
                    hintText: "Your Phone Number",
                    // prefixIcon: const Icon(Icons.lock),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40))),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, top: 35, right: 18),
            child: ElevatedSign(
                onTap: () {
                  Navigator.pushNamed(context, '/phoneOTP');
                },
                name: "Next",
                rang: Colors.greenAccent),
          )
        ],
      ),
    );
  }
}
