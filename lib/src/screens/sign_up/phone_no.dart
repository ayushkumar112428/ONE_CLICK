import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class PhoneOTP extends StatelessWidget {
  const PhoneOTP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "OTP",
              style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),
            ),
            Text("Phone Number".toUpperCase(), style: Theme.of(context).textTheme.headline6),
            const SizedBox(height: 40.0),
            // const Text("$tOtpMessage support@codingwitht.com", textAlign: TextAlign.center),
            // const SizedBox(height: 20.0),
            OtpTextField(
                mainAxisAlignment: MainAxisAlignment.center,
                numberOfFields: 6,
                fillColor: Colors.black.withOpacity(0.1),
                filled: true,
                onSubmit: (code) => print("OTP is => $code")),
            const SizedBox(height: 20.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {}, 
                child: const Text("Next"),
                ),
            ),
          ],
        ),
      ),
    );
  }
}