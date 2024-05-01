import 'package:flutter/material.dart';
import 'package:socialmediaapp/presentation/screen/Auth/login_screen.dart';
import 'package:socialmediaapp/presentation/utils/constraints.dart';
import 'package:socialmediaapp/presentation/utils/utils.dart';
import 'package:socialmediaapp/presentation/widgets/custom_text.dart';
import 'package:socialmediaapp/presentation/widgets/primary_button.dart';

class CreateAndLoginScreen extends StatefulWidget {
  const CreateAndLoginScreen({super.key});

  @override
  State<CreateAndLoginScreen> createState() => _CreateAndLoginScreenState();
}

class _CreateAndLoginScreenState extends State<CreateAndLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: Utils.symmetric(v: 20.0, h: 30.0),
            child: Column(
              children: [
                Utils.verticalSpace(180.0),
                const LogoText(
                  text: 'SocialLive',
                  fontWeight: FontWeight.w400,
                  fontSize: 28,
                ),
                Utils.verticalSpace(50.0),
                PrimaryButton(
                  text: 'Create Account',
                  onPressed: () {},
                ),
                Utils.verticalSpace(30.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
                      },
                      child: const CustomText(
                        text: 'Log In',
                        color: primaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Icon(
                      Icons.keyboard_arrow_down,
                      size: 32,
                      color: primaryColor,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// Create developer Branch
