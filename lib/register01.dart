import 'package:flutter/material.dart';
import 'package:travel_buddy/register02.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Center(
          child: Column(
            children:[
              Container(
                margin: EdgeInsets.only(top: 60,bottom:10),
                height:250,
                width:250,
                child:Image.asset("images/anime.png"),
              ),
              Container(
                margin:EdgeInsets.only(top:100),
                child: Text("Select Your Type",
                  style:TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: ElevatedButton(
                  onPressed: () {
                    print('Traveler button Pressed');
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const RegisterPage2()),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.green), // Corrected to use WidgetStateProperty.all()
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4), // Set your desired border radius
                      ),
                    ),
                    padding: WidgetStateProperty.all<EdgeInsets>(
                      EdgeInsets.symmetric(vertical: 10, horizontal: 67), // Set your desired padding
                    ),
                  ),
                  child: Text(
                    'Traveler',
                    style: TextStyle(
                      color:Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: ElevatedButton(
                  onPressed: () {
                    print('Guide button Pressed');
                  },
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.green), // Corrected to use WidgetStateProperty.all()
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4), // Set your desired border radius
                      ),
                    ),
                    padding: WidgetStateProperty.all<EdgeInsets>(
                      EdgeInsets.symmetric(vertical: 10, horizontal:75), // Set your desired padding
                    ),
                  ),
                  child: Text(
                    'Guide',
                    style: TextStyle(
                      color:Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: ElevatedButton(
                  onPressed: () {
                    print('Hotel management button Pressed');
                  },
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.green), // Corrected to use WidgetStateProperty.all()
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4), // Set your desired border radius
                      ),
                    ),
                    padding: WidgetStateProperty.all<EdgeInsets>(
                      EdgeInsets.symmetric(vertical: 10, horizontal: 30), // Set your desired padding
                    ),
                  ),
                  child: Text(
                    'Hotel Management',
                    style: TextStyle(
                      color:Colors.white,
                      fontSize: 15,
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