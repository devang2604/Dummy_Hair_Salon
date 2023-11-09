import 'package:flutter/material.dart';
import 'package:hairsalon3/providers/auth_provider.dart';
import 'package:hairsalon3/screens/mainscreen.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:provider/provider.dart';

class OtpScreen extends StatefulWidget {
  final String verificationId;
  OtpScreen({super.key, required this.verificationId});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  int timerCount = 59;
  bool isTimerFinished = false;
  String? otpCode;

  @override
  Widget build(BuildContext context) {
    final isLoading =
        Provider.of<AuthProvider>(context, listen: true).isLoading;
    return Scaffold(
      backgroundColor: Colors.white,
      body: isLoading == true
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.black,
              ),
            )
          : Stack(
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
                                  0, 0, 0, 70),
                              child: PinCodeTextField(
                                autoDisposeControllers: false,
                                appContext: context,
                                length: 6,
                                // textStyle: FlutterFlowTheme.of(context).bodyLarge,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                enableActiveFill: false,
                                autoFocus: true,
                                enablePinAutofill: false,
                                errorTextSpace: 16,
                                showCursor: true,
                                // cursorColor: FlutterFlowTheme.of(context).primary,
                                obscureText: false,
                                keyboardType: TextInputType.visiblePassword,
                                pinTheme: PinTheme(
                                  fieldHeight: 44,
                                  fieldWidth: 44,
                                  borderWidth: 2,
                                  borderRadius: BorderRadius.circular(12),
                                  shape: PinCodeFieldShape.underline,
                                  activeColor: const Color(0xFFE5E5E5),
                                  inactiveColor: const Color(0xFFE5E5E5),
                                  selectedColor: const Color(0xFFE5E5E5),
                                  activeFillColor: const Color(0xFFE5E5E5),
                                  inactiveFillColor: const Color(0xFFE5E5E5),
                                  selectedFillColor: const Color(0xFFE5E5E5),
                                ),
                                // controller: _model.pinCodeController,
                                onCompleted: (value) {
                                  setState(() {
                                    otpCode = value;
                                  });
                                },
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                // validator: _model.pinCodeControllerValidator.asValidator(context),
                              ),
                            ),
                          ),
                          Align(
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                              child: Text(
                                "Resend code in $timerCount s",
                                style: const TextStyle(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.redAccent),
                              ),
                            ),
                          ),
                          Align(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 80, 0, 0),
                              child: TextButton(
                                onPressed: () {
                                  if (otpCode != null) {
                                    verifyOtp(context, otpCode!);
                                  } else {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(const SnackBar(
                                      content: Text("Please enter OTP"),
                                    ));
                                  }
                                },
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
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  40, 0, 40, 20),
                              child: RichText(
                                textScaleFactor:
                                    MediaQuery.of(context).textScaleFactor,
                                text: const TextSpan(
                                  children: [
                                    TextSpan(
                                      text:
                                          'By continuing you are agree to our ',
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
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
                    child: Container(
                      width: 110,
                      height: 110,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                          fit: BoxFit.fitWidth,
                          alignment: AlignmentDirectional(0.00, 0.00),
                          image: Image.asset(
                            'assets/images/lockotp.png',
                          ).image,
                        ),
                        boxShadow: [
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

  countDownTimer() async {
    for (int x = 59; x > 0; x--) {
      await Future.delayed(Duration(seconds: 1)).then((_) {
        if (timerCount == 1) isTimerFinished = true;
        setState(() {
          timerCount -= 1;
        });
      });
    }
  }

  @override
  void initState() {
    countDownTimer();
  }

  void verifyOtp(BuildContext context, String userOtp) {
    final ap = Provider.of<AuthProvider>(context, listen: false);
    ap.verifyOtp(
      context: context,
      verificationId: widget.verificationId,
      userOtp: userOtp,
      onSuccess: () {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => MainScreen()),
            (route) => false);
      },
    );
  }
}
