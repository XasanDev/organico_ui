import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:organico/sizeof/size_config.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

final _formKey = GlobalKey<FormState>();
final _passwordController = TextEditingController();

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/banana.png"))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 15.0),
              child: Text(
                "Welcome",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 10),
              child: Text(
                """Welcome to Organico Mobile Apps.Please fill in the
      field bellow to sign in.""",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 30.0, right: 4.0),
              child: Container(
                height: getProportionScreenHeight(75),
                width: getProportionScreenWidth(355),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.0),
                ),
                child: IntlPhoneField(
                  decoration: InputDecoration(
                      hintText: "Password",
                      prefixIcon: const Icon(Icons.lock),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40))),
                ),
              ),
            ),
            Form(
              key: _formKey,
              child: Padding(
                padding: EdgeInsets.only(left: 12.0, right: 12.0),
                child: TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      prefixIcon: Icon(Icons.lock),
                      hintText: "Password",
                      filled: true),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 18.0, top: 24),
              child: GestureDetector(
                child: InkWell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        "Forgot Password",
                        style: TextStyle(
                            color: Colors.greenAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, "/newregistr");
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, top: 25),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(333, 44),
                  primary: Colors.green,
                ),
                onPressed: () {},
                child: Text("Sing in"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
