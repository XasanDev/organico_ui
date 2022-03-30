import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:organico/constants/constant.dart';
import 'package:organico/sizeof/size_config.dart';
import 'package:organico/widgets/widgets.dart';

class NewRegistration extends StatelessWidget {
  NewRegistration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _initFirebase = Firebase.initializeApp();
    final _formKey1 = GlobalKey<FormState>();
    final _passwordController1 = TextEditingController();
    final _formKey2 = GlobalKey<FormState>();
    final _fullnameController1 = TextEditingController();
    final _formKey3 = GlobalKey<FormState>();
    final _passwordConfirmController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "New Registration",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Container(
                height: getProportionScreenHeight(80),
                width: MediaQuery.of(context).size.width,
                child:
                    const Text("""    It looks you don't have an account on this
          number.Please let us know some information for a 
          secure service."""),
              ),
            ),
            Text(""),
            Container(
              height: getProportionScreenHeight(120),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15.0,
                      top: 15,
                    ),
                    child: Text(
                      "Full Name",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                  Form(
                    key: _formKey1,
                    child: Padding(
                      padding: EdgeInsets.only(left: 12.0, right: 12.0),
                      child: TextFormField(
                        controller: _fullnameController1,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                          hintText: "Full Name",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: getProportionScreenHeight(120),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15.0, top: 15, bottom: 5.0),
                    child: Text(
                      "PassWord Confirmation",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                  Form(
                    key: _formKey3,
                    child: Padding(
                      padding: EdgeInsets.only(left: 12.0, right: 12.0),
                      child: TextFormField(
                        controller: _passwordConfirmController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                          suffixIcon: Icon(
                            Icons.home,
                          ),
                          hintText: "Password Confirmation",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: getProportionScreenHeight(120),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, bottom: 5.0),
                    child: Text(
                      "PassWord",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                  Form(
                    key: _formKey2,
                    child: Padding(
                      padding: EdgeInsets.only(left: 12.0, right: 12.0),
                      child: TextFormField(
                        controller: _passwordController1,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                          suffixIcon: Icon(
                            Icons.home,
                          ),
                          hintText: "Password",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Checkbox(value: false, onChanged: (v) {}),
                Text("I accept the Terms of Use and Privacy Policy")
              ],
            ),
            Container(
              height: getProportionScreenHeight(174),
              width: getProportionScreenWidth(374),
              child: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                        top: 8.0,
                        left: getProportionScreenWidth(30),
                        right: getProportionScreenHeight(30),
                      ),
                      child: ElevatedSign(
                        rang: Constatns.yashilRang,
                        name: "Sing up",
                        onTap: () {
                          Navigator.pushNamed(context, '/forgot');
                        },
                      )),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 8.0,
                      left: getProportionScreenWidth(30),
                      right: getProportionScreenHeight(20),
                    ),
                    child: Text(
                      "or use",
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 8.0,
                      left: getProportionScreenWidth(30),
                      right: getProportionScreenHeight(30),
                    ),
                    child: ElevatedSign(
                      rang: Constatns.oqRang,
                      name: "Sing Up With Google",
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
