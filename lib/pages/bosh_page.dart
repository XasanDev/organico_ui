import 'package:flutter/material.dart';
import 'package:organico/sizeof/size_config.dart';

class BoshPage extends StatelessWidget {
  const BoshPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 70.0),
            child: GestureDetector(
              child: Container(
                height: getProportionScreenHeight(250),
                width: getProportionScreenWidth(250),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/Logo.png"))),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/registr');
              },
            ),
          ),
        
        ],
      ),
    );
  }
}
