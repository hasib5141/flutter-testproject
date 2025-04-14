import 'package:flutter/material.dart';
import 'package:travel_buddy/profile.dart';

import 'Home.dart';
import 'Payment.dart';

class Hotel extends StatelessWidget{
  const Hotel({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
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
              margin: EdgeInsets.only(top:30,left:15),
              child:Text("Enter Location",
                style:TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize:23,
                ),
              )
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin:EdgeInsets.only(top:15,left:15),
                width:250,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search Location',
                    hintStyle: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),
                    border: OutlineInputBorder(),
                  ),
                  // obscureText: true,
                ),
              ),
              Container(
                margin:EdgeInsets.only(left:15,top:10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    minimumSize: const Size(50, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                    onPressed:(){
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => Home()),
                    // );
                    },
                    child:Icon(Icons.search,
                    size:20,
                      color:Colors.white,
                    ),
                ),
              )

            ],
          ),
          Container(
              margin: EdgeInsets.only(top:40,left:15,bottom:20),
              child:Text("Available Hotel",
                style:TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize:23,
                ),
              )
          ),
          Container(
            margin:EdgeInsets.only(left:15),
            child: Column(
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
                        child:Image.asset("images/Hotel1.png",
                          fit:BoxFit.cover,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top:7),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start, // Left-aligned
                          children: [
                            Text("Hotel DIamond Park",
                              style:TextStyle(
                                fontSize:15,
                              ),
                            ),
                            Row(
                             children: [
                               Icon(Icons.star,
                               color:Colors.orangeAccent),
                               Icon(Icons.star,
                                   color:Colors.orangeAccent),
                               Icon(Icons.star,
                                   color:Colors.orangeAccent),
                               Icon(Icons.star,
                                   color:Colors.orangeAccent),
                             ],
                            ),

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
                        child:Text("GO",
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
                        child:Image.asset("images/Hotel2.png",
                          fit:BoxFit.cover,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top:7),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start, // Left-aligned
                          children: [
                            Text("Hotel Regent Park",
                              style:TextStyle(
                                fontSize:15,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.star,
                                    color:Colors.orangeAccent),
                                Icon(Icons.star,
                                    color:Colors.orangeAccent),
                                Icon(Icons.star,
                                    color:Colors.orangeAccent),
                                Icon(Icons.star,
                                    color:Colors.orangeAccent),
                                Icon(Icons.star,
                                    color:Colors.orangeAccent),
                              ],
                            ),

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
                        child:Text("GO",
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
                        child:Image.asset("images/Hotel1.png",
                          fit:BoxFit.cover,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top:7),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start, // Left-aligned
                          children: [
                            Text("Hotel DIamond Park",
                              style:TextStyle(
                                fontSize:15,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.star,
                                    color:Colors.orangeAccent),
                                Icon(Icons.star,
                                    color:Colors.orangeAccent),
                                Icon(Icons.star,
                                    color:Colors.orangeAccent),
                                Icon(Icons.star,
                                    color:Colors.orangeAccent),
                              ],
                            ),

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
                        child:Text("GO",
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
