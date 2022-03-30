import 'package:flutter/material.dart';
import 'package:organico/constants/constant.dart';
import 'package:organico/sizeof/size_config.dart';

class ElevatedSign extends StatelessWidget {
  var onTap;
  var name;
  var rang;
  ElevatedSign(
      {Key? key, required this.onTap, required this.name, required this.rang})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ElevatedButton(
      onPressed: onTap,
      child: Text(name),
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        primary: Constatns.yashilRang,
        minimumSize: Size(
          getProportionScreenWidth(374),
          getProportionScreenHeight(50),
        ),
      ),
    );
  }
}

class AppBa extends StatelessWidget {
  var trailing;
  var leading;
  var text;
  AppBa({Key? key, this.trailing, this.leading, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionScreenHeight(60),
      width: getProportionScreenWidth(400),
      child: ListTile(
        leading: leading,
        iconColor: Colors.black,
        title: Padding(
          padding: const EdgeInsets.only(left: 18.0, top: 28),
          child: Text(
            text,
            style: TextStyle(
                fontSize: getProportionScreenHeight(23),
                fontWeight: FontWeight.bold),
          ),
        ),
        trailing: trailing,
      ),
    );
  }
}

class FormFieldText extends StatelessWidget {
  final hintText;
  FormFieldText({Key? key,this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final _controller = TextEditingController();

    return Container(
      margin: EdgeInsets.only(left: 18.0,right: 18.0),
      height: getProportionScreenHeight(60),
      width: getProportionScreenWidth(400),
      child: Form(
          key: _formKey,
          child: TextFormField(
             controller: _controller,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                hintText: hintText,
              ))),
    );
  }
}
