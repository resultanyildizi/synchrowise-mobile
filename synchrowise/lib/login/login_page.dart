import 'package:flutter/material.dart';
import 'package:synchrowise/constants.dart';
import 'package:synchrowise/ui_helpers/custom_animated_container.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 35.0,
          vertical: 25.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            Center(
              child: Image.asset(
                'assets/synchrowise-logo.png',
                width: 115,
                height: 115,
              ),
            ),
            const SizedBox(height: 40),
            const Text(
              "Login to your account",
              style: TextStyle(
                color: primaryDarkColor,
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 25),
            _buildTextField("Enter your email", Icons.email),
            const SizedBox(height: 25),
            _buildTextField("Password", Icons.lock, Icons.visibility_off),
            const SizedBox(height: 25),
            Row(
              children: [
                CustomAnimatedContainer(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                            color:
                                true ? Colors.transparent : secondaryDarkColor),
                        color: true ? primaryColor : backgroundColor),
                    child: Padding(
                      padding: const EdgeInsets.all(
                        true ? 4.0 : 11.0,
                      ),
                      child: true
                          ? Icon(
                              Icons.check,
                              size: 14.0,
                              color: whiteColor,
                            )
                          : Container(),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                const Text(
                  "Remember me",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: secondaryDarkColor),
                ),
                const Spacer(),
                CustomAnimatedContainer(
                  onTap: () {},
                  child: const Text(
                    "Forgot Pasword?",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: primaryColor,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 25),
            CustomAnimatedContainer(
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Text("Sign In",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: whiteColor,
                    )),
              ),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    offset: const Offset(0, 4),
                    blurRadius: 4,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 70),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 85,
                  height: 0.4,
                  color: secondaryDarkColor.withOpacity(0.7),
                ),
                Text(
                  "Or sign in with",
                  style: TextStyle(
                    color: secondaryDarkColor.withOpacity(0.7),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Container(
                  width: 85,
                  height: 0.4,
                  color: secondaryColor.withOpacity(0.7),
                ),
              ],
            ),
            const Spacer(),
            Center(
              child: CustomAnimatedContainer(
                width: 40,
                height: 40,
                onTap: () {},
                child: const Icon(Icons.mail),
                decoration: BoxDecoration(
                    border: Border.all(color: secondaryDarkColor),
                    borderRadius: BorderRadius.circular(2)),
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't Have an Account?",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: secondaryDarkColor,
                  ),
                ),
                const SizedBox(width: 2),
                CustomAnimatedContainer(
                  onTap: () {},
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: primaryColor,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  TextField _buildTextField(String text, IconData prefixIcon,
      [IconData? suffixIcon]) {
    return TextField(
      decoration: InputDecoration(
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: primaryColor),
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: secondaryColor),
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        prefixIcon: Icon(
          prefixIcon,
          color: secondaryColor,
          size: 22,
        ),
        suffixIcon: CustomAnimatedContainer(
          width: 22,
          height: 22,
          onTap: () {},
          child: Icon(
            suffixIcon,
            color: secondaryColor,
            size: 20,
          ),
        ),
        hintStyle: const TextStyle(
          color: secondaryColor,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        hintText: text,
      ),
    );
  }
}
