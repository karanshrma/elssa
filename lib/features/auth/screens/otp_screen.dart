import 'package:elssa/features/auth/screens/add_new_address.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import '../../../core/custom_elevated_button.dart';

class OtpScreen extends StatefulWidget {
  static route() => MaterialPageRoute(builder: (context) => OtpScreen());

  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: const Color(0xFFFDFEFE),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      backgroundColor: const Color(0xFFFDFEFE),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40),

            Image.asset(
              'assets/images/otp.png',
              height: 150,
              width: 150,
              fit: BoxFit.contain,
            ),

            const SizedBox(height: 32),

            Text(
              'OTP Verification',
              style: Theme.of(context).textTheme.titleLarge,
            ),

            const SizedBox(height: 10),

            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Enter the OTP sent to ',
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(color: Colors.grey),
                children: const <TextSpan>[
                  TextSpan(
                    text: '+1 9879878975',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 32),

            OtpTextField(
              numberOfFields: 4,
              showFieldAsBox: true,
              borderColor: const Color(0xFFE7E7E7),
              enabledBorderColor: const Color(0xFFE7E7E7),
              focusedBorderColor: Colors.black,
              borderWidth: 1.5,
              borderRadius: BorderRadius.circular(15),
              fieldWidth: 60,
              fieldHeight: 60,
              contentPadding: EdgeInsets.zero,
              textStyle: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
              filled: true,
              fillColor: Colors.white,
              margin: const EdgeInsets.symmetric(horizontal: 8),
              onCodeChanged: (String code) {
                print('Current code: $code');
              },
              onSubmit: (String verificationCode) {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text("Verification Code"),
                      content: Text('Code entered is $verificationCode'),
                    );
                  },
                );
              },
            ),

            const SizedBox(height: 16),

            RichText(
              text: TextSpan(
                text: 'OTP not received? ',
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(color: Colors.grey),
                children: const <TextSpan>[
                  TextSpan(
                    text: 'RESEND OTP',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 56),

            SafeArea(
              child: SizedBox(
                width: double.infinity,
                height: 56,
                child: CustomElevatedbutton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      AddNewAddressScreen.route(),
                      (route) => false,
                    );
                  },
                  text: 'VERIFY & PROCEED',
                  textColor: Colors.white,
                ),
              ),
            ),

            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
