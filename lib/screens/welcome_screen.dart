import 'package:flutter/material.dart';
import 'package:hairsalon3/providers/auth_provider.dart';
import 'package:provider/provider.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Align(
            alignment: const AlignmentDirectional(0.00, -1.00),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/images/hairsalonlogo.png',
                  width: MediaQuery.sizeOf(context).width * 0.6,
                  height: MediaQuery.sizeOf(context).height * 0.425,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const Align(
            alignment: AlignmentDirectional(1.00, -1.00),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 30, 6, 0),
              child: Text(
                'SKIP',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.redAccent,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(0.00, 1.00),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.4,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: const Color(0xFFE5E5E5),
                  ),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0.00, 0.00),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            15, 0, 15, 120),
                        child: TextField(
                          controller: phoneController,
                          keyboardType: TextInputType.phone,
                          obscureText: false,
                          decoration: const InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFE5E5E5)),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFE5E5E5)),
                            ),
                            suffixIcon: Icon(
                              Icons.phone_in_talk_rounded,
                              color: Color(0xFFE5E5E5),
                            ),
                            labelText: 'Enter Mobile Number',
                            labelStyle: TextStyle(
                                fontSize: 14, color: Color(0xFFE5E5E5)),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 80, 0, 0),
                        child: TextButton(
                          onPressed: () => sendPhoneNumber(),
                          style: TextButton.styleFrom(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                120, 10, 120, 10),
                            backgroundColor: const Color(0xFF024062),
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: const Text(
                            'CONTINUE',
                            style: TextStyle(
                                fontFamily: 'Lato', color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.00, 1.00),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(40, 0, 40, 20),
                        child: RichText(
                          textScaleFactor:
                              MediaQuery.of(context).textScaleFactor,
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: 'By continuing you are agree to our ',
                                style: TextStyle(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 15,
                                ),
                              ),
                              TextSpan(
                                text: 'Terms & Conditions',
                                style: TextStyle(
                                  color: Color(0xFF397D9C),
                                  fontSize: 15,
                                ),
                              ),
                              TextSpan(
                                text: ' and',
                                style: TextStyle(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 15,
                                ),
                              ),
                              TextSpan(
                                text: ' Privacy Policy',
                                style: TextStyle(
                                  color: Color(0xFF397D9C),
                                  fontSize: 15,
                                ),
                              )
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    alignment: const AlignmentDirectional(0.00, 0.00),
                    image: Image.asset(
                      'assets/images/personiconlogin.png',
                    ).image,
                  ),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 4,
                      color: Color(0x33000000),
                      offset: Offset(0, 2),
                    )
                  ],
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void sendPhoneNumber() {
    final ap = Provider.of<AuthProvider>(context, listen: false);
    String phoneNumber = phoneController.text.trim();
    ap.signInWithPhone(context, "+$phoneNumber");
  }
}
