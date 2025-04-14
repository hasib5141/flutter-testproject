import 'package:flutter/material.dart';

import 'OTP.dart';

class RegisterPage2 extends StatelessWidget {
  const RegisterPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 150,bottom:10),
              child:Text("Enter Your Phone Number :",
                style: TextStyle(
                  color:Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              width:340,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter Your Mobile Number',
                  hintStyle: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                  border: OutlineInputBorder(),
                ),
                // obscureText: true,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top:50),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  minimumSize: const Size(300, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                onPressed:  () {
                  print('continue button Pressed');
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=> const OtpPage()),
                  );
                },
                child: const Text(
                  'Continue',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

