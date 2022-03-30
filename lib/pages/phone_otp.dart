import 'package:flutter/material.dart';
import 'package:organico/widgets/widgets.dart';

class PhoneOTP extends StatelessWidget {
  const PhoneOTP({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppBa(text: "OTAC Number"),
          Padding(
            padding: const EdgeInsets.only(top:58.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Enter Authorization Code",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:28.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("We have sent SMS to",
                style: TextStyle(
                
                  fontSize: 18),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("+1(XXX) XXX-X120",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18),)
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top:33.0),
            child: FormFieldText(hintText: "6 Digit Code",),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 18.0,top: 25),
                child: Text(
                  "Resend Code",
                style: TextStyle(
                  color: Colors.greenAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),),
              )
            ],
          )
        ],
      ),
    );
  }
}