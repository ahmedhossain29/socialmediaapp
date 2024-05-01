import 'package:flutter/material.dart';
import '../../widgets/custom_left_arrow_icon.dart';
import '../../widgets/primary_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailTEController = TextEditingController();
  TextEditingController _passwordTEController = TextEditingController();
  bool _isPasswordObscured = true;
  bool _checkbox = false;
  bool _isButtonActive = false;

  @override
  void initState() {
    super.initState();
    _emailTEController.addListener(_checkButtonState);
    _passwordTEController.addListener(_checkButtonState);
  }

  void _checkButtonState() {
    setState(() {
      _isButtonActive =
          _emailTEController.text.isNotEmpty && _passwordTEController.text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomLeftArrowIcon(),
            const SizedBox(
              height: 150,
            ),
            Container(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Enter your phone number and password",
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      fontSize: 30,
                      height: 1.5, // line height
                      letterSpacing: -0.3,
                      color: Color(0xFF101828),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    'Email',
                    style: TextStyle(
                      fontFamily: 'Satoshi',
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      height: 1.0, // line height
                      color: Color(0xFF101828),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    style: const TextStyle(
                      fontFamily: 'Satoshi',
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      height: 1.42857,
                    ),
                    controller: _emailTEController,
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF4478FF),
                          width: 2.0,
                        ),
                      ),
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        size: 25,
                      ),
                      hintText: 'Input Email',
                      hintStyle: TextStyle(
                        fontFamily: 'Satoshi',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        height: 1.42857,
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 8),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Password',
                    style: TextStyle(
                      fontFamily: 'Satoshi',
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      height: 1.0, // line height
                      color: Color(0xFF101828),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    style: const TextStyle(
                      fontFamily: 'Satoshi',
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      height: 1.42857,
                    ),
                    controller: _passwordTEController,
                    obscureText: _isPasswordObscured,
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF4478FF),
                          width: 2.0,
                        ),
                      ),
                      prefixIcon: const Icon(
                        Icons.lock_open_outlined,
                        size: 25,
                      ),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _isPasswordObscured = !_isPasswordObscured;
                          });
                        },
                        child: Icon(
                          _isPasswordObscured
                              ? Icons.visibility
                              : Icons.visibility_off,
                          size: 25,
                        ),
                      ),
                      hintText: 'Input Password',
                      hintStyle: const TextStyle(
                        fontFamily: 'Satoshi',
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        height: 1.42857,
                      ),
                      contentPadding: const EdgeInsets.symmetric(vertical: 8),
                    ),
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: _checkbox,
                        activeColor: const Color(0xFF4478FF),
                        onChanged: (value) {
                          setState(() {
                            _checkbox = value!;
                          });
                        },
                      ),
                      const Text(
                        "Save Password",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Satoshi',
                          color: Color(0xFF475467),
                          height: 1.3, // Line height
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  PrimaryButton(
                    text: 'Log In',
                    onPressed: _isButtonActive
                        ? () {
                      // Your login logic here
                    }
                        : null,
                    bgColor: _isButtonActive ? const Color(0xFF4478FF) : const Color(0xFFDAE4FF),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


