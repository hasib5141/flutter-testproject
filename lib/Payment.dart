import 'package:flutter/material.dart';
import 'package:travel_buddy/profile.dart';

import 'Home.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Column(
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
              margin: EdgeInsets.only(top:50,left:15),
            child:Text("Payment Process ",
                style:TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize:23,
               ),
              )
          ),
          Container(
              margin: EdgeInsets.only(top:20,left:20),
            child:Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     Image.asset("images/bks.png"),
                     Image.asset("images/nag.png"),
                   ],
                ),
                Container(
                  margin: EdgeInsets.only(top:30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("images/dbl.png"),
                      Image.asset("images/vis.png"),
                    ],
                  ),
                ),
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
        shape: Border(
          bottom: BorderSide(
            color: Colors.black,  // Border color
            width: 0.7,        // Border thickness
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
          size:35,// Change to your desired color
        ),
        backgroundColor: Colors.white,
        actions: [
          // margin:EdgeInsets.all(100),
          Container(
            margin: EdgeInsets.only(right:20),
            child: Image.asset("images/logo.png",
              width: 130, // Set your desired width
              height: 100, // Set your desired height
              fit: BoxFit.cover,
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


