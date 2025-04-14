import 'package:flutter/material.dart';
import 'package:travel_buddy/profile.dart';

import 'Home.dart';
import 'Hotel.dart';
import 'Payment.dart';
import 'booking.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin:EdgeInsets.only(left:20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                minimumSize: const Size(00, 30),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              onPressed:  () {
                print('back button Pressed');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=> const HomePage()),
                );
              },
              child:Icon(Icons.arrow_back,
                color:Colors.white,
                size:24,
              ),
              // child: const Text(
              //   'Back',
              //   style: TextStyle(
              //     fontSize: 15,
              //     color: Colors.white,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
            ),
          ),
           Container(
             margin:EdgeInsets.only(top:20,left:20,bottom:50),
             child: const Text(
              'Book Your Service :',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold
              ),
             ),
           ),
          Container(
            margin: EdgeInsets.only(left:20,bottom:10),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin:EdgeInsets.only(left:2,bottom:5),
                  child: Text("Find Hotel",
                   style:TextStyle(
                     fontSize:17,
                     fontWeight: FontWeight.bold,
                   ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print('Image clicked!');
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Hotel()),
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: 80,
                      width: 330,
                      child: Image.asset(
                        "images/Guide.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
              ],
            )
          ),
          Container(
              margin: EdgeInsets.only(left:20,bottom:10),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin:EdgeInsets.only(left:2,bottom:5),
                    child: Text("Find Guide",
                      style:TextStyle(
                        fontSize:17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print('Image clicked!');
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Hotel()),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: 80,
                        width: 330,
                        child: Image.asset(
                          "images/Hotel.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  )
                ],
              )
          ),
          Container(
              margin: EdgeInsets.only(left:20,bottom:10),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin:EdgeInsets.only(left:2,bottom:5),
                    child: Text("Rent Vehicle",
                      style:TextStyle(
                        fontSize:17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print('Image clicked!');
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Hotel()),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: 80,
                        width: 330,
                        child: Image.asset(
                          "images/Rent.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  )
                ],
              )
          ),
        ],
      ),
      appBar:AppBar(
        flexibleSpace: Container(
          decoration:BoxDecoration(
            gradient:LinearGradient(
              colors: [Colors.green,Colors.white],
            ),
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
          size:35,// Change to your desired color
        ),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            onPressed: (){
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => Hotel()),
              // );
              print("Message button click");
            },
            icon:Icon(Icons.message,
              size:35,
              color:Colors.black45,

            ),
          ),
          IconButton(
            onPressed: (){

            },
            icon:Icon(Icons.notification_add,
              size:35,
              color:Colors.black45,
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child:Container(
          color:Colors.white,
          child: ListView(
            children: [
              DrawerHeader(
                decoration:BoxDecoration(
                  gradient:LinearGradient(
                    colors: [Colors.green,Colors.white],
                  ),
                ),
                child:Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right:20),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child:Container(
                          height:80,
                          width:80,
                          child:Image.asset("images/Rachin.jpg",
                            fit:BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed:(){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>ProfilePage()),
                        );
                        print("Profile button pressed");
                      },
                      style:ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(Colors.green),
                      ),
                      child:Text("Rachin",
                        style:TextStyle(
                          color:Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              ListTile(
                leading:Icon(Icons.support,
                  color: Colors.orange,
                  size:24,
                ),
                title:Text("Support",
                  style:TextStyle(
                    color:Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize:20,
                  ),
                ),
                onTap:(){
                  print("Support button click");
                  // Navigator.push(context,
                  // MaterialPageRoute(builder: (context) =>Payment()),
                  // );
                },
              ),
              ListTile(
                leading:Icon(Icons.history,
                  color: Colors.blueAccent,
                  size:24,
                ),
                title:Text("Purchased History",
                  style:TextStyle(
                    color:Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize:20,
                  ),
                ),
              ),
              ListTile(
                leading:Icon(Icons.help,
                  color: Colors.greenAccent,
                  size:24,
                ),
                title:Text("Help",
                  style:TextStyle(
                    color:Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize:20,
                  ),
                ),
              ),
              ListTile(
                leading:Icon(Icons.logout,
                  color: Colors.redAccent,
                  size:25,
                ),
                title:Text("LOG OUT",
                  style:TextStyle(
                    color:Colors.black,
                    fontSize:18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
      // Bottom navigation
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: 'More'),
          BottomNavigationBarItem(icon: Icon(Icons.groups), label: 'Service'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Purchased'),
        ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
      ),
    );
  }
}


