import 'package:e_visitor/screens/login_admin.dart';
import 'package:e_visitor/screens/signup.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 30),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            "Login",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Login to get started",
            style: TextStyle(color: Color(0XFF555555)),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text("Email Address"),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Enter Email",
                hintStyle: TextStyle(fontSize: 14),
                filled: true,
                fillColor: Color(0XFFF6F6F6),
                prefixIcon: Icon(Icons.email_outlined),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                )),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text("Password"),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: const InputDecoration(
                hintText: "Enter Password",
                hintStyle: TextStyle(fontSize: 14),
                filled: true,
                fillColor: Color(0XFFF6F6F6),
                prefixIcon: Icon(Icons.lock_outline),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                )),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Text(
                "Forget password ?",
                style: TextStyle(
                    fontStyle: FontStyle.italic, color: Color(0xFF124BCD)),
              )
            ],
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
                "Login",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Column(children: [
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return const SignUp();
                  }));
                },
                child: const Text(
                  "Create Account",
                  style: const TextStyle(
                    color: const Color(0xFF124BCD),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return LoginAdmin();
                  }));
                },
                child: const Text(
                  "Admin ?",
                  style: TextStyle(
                    color: Color(0xFF124BCD),
                  ),
                ),
              )
            ])
          ])
        ]),
      ),
    )));
  }
}
