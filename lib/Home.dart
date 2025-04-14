import 'package:flutter/material.dart';
import 'package:travel_buddy/profile.dart';

import 'Hotel.dart';
import 'Payment.dart';
import 'booking.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Column(
        children: [
          Container(
            width:double.infinity,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/banner.png'), // for local assets
                fit: BoxFit.cover, // covers entire container
              ),
            ),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                  },
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all<Color>(
                      Color.fromRGBO(255, 255, 255, 0.64), // Red with 50% opacity
                    ),
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    padding: WidgetStateProperty.all<EdgeInsets>(
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    ),
                  ),
                  child: const Text(
                    'GUIDE',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color:Colors.black,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>BookingPage()),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all<Color>(
                      Color.fromRGBO(255, 255, 255, 0.64), // Red with 50% opacity
                    ),
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),

                    ),
                    padding: WidgetStateProperty.all<EdgeInsets>(
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                    ),
                  ),
                  child: const Text(
                    'BOOKING',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color:Colors.black
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30,bottom:20),
            child:Text("Current Available Packages",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                  // fontStyle: FontStyle.
              ),
            ),
          ),
          Column(
            children:[
              Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.only(bottom:15),
                height:80,
                width:330,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  // color:Colors.green[100],
                  border:Border.all(
                      color:Colors.black,
                      width:0.5,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height:100,
                      width:100,
                      child:Image.asset("images/p1.png",
                      fit:BoxFit.cover,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top:7),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start, // Left-aligned
                        children: [
                           Text("Sylhet 1 Week",
                             style:TextStyle(
                               fontSize:15,
                             ),
                           ),
                          Text("9000 BDT ",
                            style:TextStyle(
                              fontSize:16,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                      
                        ],
                      ),
                    ),
                    ElevatedButton(
                        onPressed:(){
                          print("Package purchase button click");
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Payment()),
                          );
                        },
                      style:ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(Colors.green), // Corrected to use WidgetStateProperty.all()
                        shape:WidgetStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                      ),
                        child:Text("BUY",
                          style:TextStyle(
                            fontWeight: FontWeight.bold,
                            color:Colors.white,
                          ),
                        ),
                    ),
                  ],
                 ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.only(bottom:15),
                height:80,
                width:330,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  // color:Colors.green[100],
                  border:Border.all(
                    color:Colors.black,
                    width:0.5,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height:100,
                      width:100,
                      child:Image.asset("images/p2.png",
                        fit:BoxFit.cover,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top:7),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start, // Left-aligned
                        children: [
                          Text("Sajek 1 Week",
                            style:TextStyle(
                              fontSize:15,
                            ),
                          ),
                          Text("7000 BDT ",
                            style:TextStyle(
                              fontSize:16,
                              fontWeight: FontWeight.bold,
                            ),
                          )

                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed:(){
                        print("sajek purchase button click");
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Payment()),
                        );
                      },
                      style:ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(Colors.green), // Corrected to use WidgetStateProperty.all()
                        shape:WidgetStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                      ),
                      child:Text("BUY",
                        style:TextStyle(
                          fontWeight: FontWeight.bold,
                          color:Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                height:80,
                width:330,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  // color:Colors.green[100],
                  border:Border.all(
                    color:Colors.black,
                    width:0.5,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height:100,
                      width:100,
                      child:Image.asset("images/p3.png",
                        fit:BoxFit.cover,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top:7),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start, // Left-aligned
                        children: [
                          Text("Cox,s B. 1 Week",
                            style:TextStyle(
                              fontSize:15,
                            ),
                          ),
                          Text("9000 BDT ",
                            style:TextStyle(
                              fontSize:16,
                              fontWeight: FontWeight.bold,
                            ),
                          )

                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed:(){
                        print("Package purchase button click");
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Payment()),
                        );
                      },
                      style:ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(Colors.green), // Corrected to use WidgetStateProperty.all()
                        shape:WidgetStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                        ),
                      ),
                      child:Text("BUY",
                        style:TextStyle(
                          fontWeight: FontWeight.bold,
                          color:Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
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


