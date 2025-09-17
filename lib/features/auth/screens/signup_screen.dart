import 'package:elssa/core/custom_elevated_button.dart';
import 'package:elssa/features/auth/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../global_variables.dart';

class SignupScreen extends StatefulWidget {
  static route() => MaterialPageRoute(builder: (context) => SignupScreen());

  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _phoneController = TextEditingController();
  String _selectedCountryCode = '+1';
  String _selectedCountry = 'USA';
  String _fullPhoneNumber = '';
  String _selectedFlag = '🇺🇸';

  @override
  Widget build(BuildContext context) {
    print(' Signup screen : R${MediaQuery.of(context).size}');
    return Scaffold(
      backgroundColor: const Color(0xFFFDFEFE),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 4,
            child: SizedBox(
              width: double.infinity,
              child: SvgPicture.asset(
                "assets/images/login.svg",
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
          ),

          Expanded(
            flex: 4,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Column(
                    children: [
                      Center(
                        child: const Text(
                          'Your Home services Expert',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        'Continue with Phone Number',
                        style: TextStyle(
                          fontSize: 11.sp,
                          color: Colors.grey[600],
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),

                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Flexible(
                          flex: 2,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                value: _selectedCountry,
                                isExpanded: true,
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
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 8,
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            country['flag']!,
                                            style: const TextStyle(
                                              fontSize: 16,
                                            ),
                                          ),
                                          const SizedBox(width: 6),
                                          Expanded(
                                            child: Text(
                                              '(${country['name']}) ${country['code']}',
                                              style: const TextStyle(
                                                fontSize: 13,
                                                color: Colors.black87,
                                                fontWeight: FontWeight.w500,
                                              ),
                                              overflow: TextOverflow.ellipsis,
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
                                        children: [
                                          Text(
                                            country['flag']!,
                                            style: const TextStyle(
                                              fontSize: 16,
                                            ),
                                          ),
                                          Text(
                                            ' ${country['name']} ${country['code']}',
                                            style: TextStyle(
                                              fontSize: 10,
                                              color: isSelected
                                                  ? Colors.black87
                                                  : Colors.grey[600],
                                            ),
                                            overflow: TextOverflow.ellipsis,
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
                        ),

                        Container(
                          height: 24,
                          width: 1,
                          color: Colors.grey[300],
                        ),

                        Flexible(
                          flex: 3,
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
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 16,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),

                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: CustomElevatedbutton(
                      onPressed: () {
                        print('Sign up with phone: ${_phoneController.text}');
                      },
                      text: 'SIGN UP',
                      textColor: Colors.white,
                    ),
                  ),

                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'VIEW OTHER OPTION',
                      style: TextStyle(
                        color: Color(0xFF5A77FF),
                        fontSize: 9,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),

                  SafeArea(
                    child: Flexible(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Text(
                              'ALREADY HAVE AN ACCOUNT? ',
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
                              Navigator.push(context, LoginScreen.route());
                            },
                            child: const Text(
                              'LOG IN',
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
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }
}
