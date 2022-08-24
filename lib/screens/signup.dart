import 'package:e_visitor/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 30,
          bottom: 30,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            "Create Account",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Signup to get started",
            style: TextStyle(color: Color(0XFF555555)),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text("Name"),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: "Enter Firstname and Lastname",
                hintStyle: TextStyle(fontSize: 14),
                filled: true,
                fillColor: Color(0XFFF6F6F6),
                prefixIcon: Image.asset("assets/images/account.png"),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                )),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text("Email"),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: "Enter Email",
                hintStyle: TextStyle(fontSize: 14),
                filled: true,
                fillColor: Color(0XFFF6F6F6),
                prefixIcon: Image.asset("assets/images/email.png"),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                )),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text("Phone"),
          const SizedBox(
            height: 10,
          ),
          IntlPhoneField(
            decoration: InputDecoration(
                hintText: "Enter Phone Number",
                filled: true,
                fillColor: Color(0XFFF6F6F6),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                )),
            initialCountryCode: 'NG',
            onChanged: (phone) {
              print(phone.completeNumber);
            },
          ),
          const SizedBox(
            height: 20,
          ),
          const Text("Password"),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: "Enter Password",
                filled: true,
                fillColor: Color(0XFFF6F6F6),
                prefixIcon: Image.asset("assets/images/lock.png"),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                )),
          ),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            width: size.width * 0.99,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(500, 60),
                  primary: const Color(0xFF124BCD)),
              child: const Text(
                "Create Account",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Column(
            children: [
              const Text("OR"),
              const SizedBox(
                height: 20,
              ),
              const Text("Sign up using"),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: size.width / 2.6,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(400, 50),
                          primary: const Color(0xFFDEE6F9)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/gmail.png"),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "Google",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width / 2.6,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(400, 50),
                          primary: const Color(0xFFDEE6F9)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/facebook.png"),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "Facebook",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account ?"),
                  InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return const LoginScreen();
                        }));
                      },
                      child: const Text(
                        "Login",
                        style: const TextStyle(color: Color(0xFF124BCD)),
                      )),
                ],
              )
            ],
          )
        ]),
      ),
    )));
  }
}
