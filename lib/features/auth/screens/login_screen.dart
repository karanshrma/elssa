import 'package:elssa/core/custom_elevated_button.dart';
import 'package:elssa/features/auth/screens/otp_screen.dart';
import 'package:elssa/features/auth/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../global_variables.dart';

class LoginScreen extends StatefulWidget {
  static route() => MaterialPageRoute(builder: (context) => LoginScreen());

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _phoneController = TextEditingController();
  String _selectedCountryCode = '+1';
  String _selectedCountry = 'USA';
  String _fullPhoneNumber = '';
  String _selectedFlag = '🇺🇸';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFDFEFE),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFDFEFE),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),

            Text(
              'Welcome Back!',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            SizedBox(height: 40),

            Container(
              width: double.infinity,
              height: 56,
              child: ElevatedButton.icon(
                onPressed: () {
                  print('Continue with Facebook');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF7583CA),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                  elevation: 0,
                ),
                icon: Icon(Icons.facebook, color: Colors.white, size: 24),
                label: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'CONTINUE WITH FACEBOOK',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 16),

            Container(
              width: double.infinity,
              height: 56,
              child: OutlinedButton.icon(
                onPressed: () {
                  print('Continue with Google');
                },
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.grey[300]!),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                  backgroundColor: Colors.white,
                ),
                icon: SvgPicture.asset(
                  'assets/images/google_logo.svg',

                  width: 24,
                  height: 24,
                ),
                label: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'CONTINUE WITH GOOGLE',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 32),

            Center(
              child: Text(
                'OR CONTINUE WITH PHONE NUMBER',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.5,
                ),
              ),
            ),
            SizedBox(height: 24),

            Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: _selectedCountry,
                        onChanged: (String? newValue) {
                          if (newValue != null) {
                            final country = countries.firstWhere(
                              (c) => c['name'] == newValue,
                            );
                            setState(() {
                              _selectedCountry = newValue;
                              _selectedCountryCode = country['code']!;
                              _selectedFlag = country['flag']!;
                            });
                            _fullPhoneNumber =
                                '$_selectedCountryCode${_phoneController.text}';
                            print(_fullPhoneNumber);
                          }
                        },
                        items: countries.map<DropdownMenuItem<String>>((
                          country,
                        ) {
                          return DropdownMenuItem<String>(
                            value: country['name'],
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 8),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    country['flag']!,
                                    style: TextStyle(fontSize: 10),
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    '(${country['name']}) ${country['code']}',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }).toList(),
                        selectedItemBuilder: (BuildContext context) {
                          return countries.map<Widget>((country) {
                            final isSelected =
                                country['name'] == _selectedCountry;
                            return Container(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    country['flag']!,
                                    style: TextStyle(fontSize: 10),
                                  ),
                                  SizedBox(width: 6),
                                  Text(
                                    ' ${country['name']} ${country['code']}',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: isSelected
                                          ? Colors.black87
                                          : Colors.grey[600],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }).toList();
                        },
                        dropdownColor: Colors.white,
                        elevation: 8,
                        borderRadius: BorderRadius.circular(12),
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.grey[600],
                          size: 20,
                        ),
                      ),
                    ),
                  ),

                  Container(height: 24, width: 1, color: Colors.grey[300]),

                  Expanded(
                    child: TextField(
                      controller: _phoneController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintText: 'Enter Mobile Number',
                        hintStyle: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 9,
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 24),

            Container(
              width: double.infinity,
              height: 56,
              child: CustomElevatedbutton(
                onPressed: () {
                  Navigator.push(context, OtpScreen.route());
                  print(
                    'Log in with phone: $_selectedCountryCode${_phoneController.text}',
                  );
                },
                textColor: Colors.white,
                text: 'LOG IN',
                color: Colors.black,
              ),
            ),

            SizedBox(height: 16),

            Center(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Spacer(flex: 3),
            SafeArea(
              child: Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Text(
                        "DON'T HAVE AN ACCOUNT?  ",
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, SignupScreen.route());
                      },
                      child: const Text(
                        'SIGN UP',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }
}
