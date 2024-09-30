import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class Navigationbar extends StatefulWidget {
  const Navigationbar({super.key});

  @override
  State<Navigationbar> createState() => _NavigationbarState();
}

class _NavigationbarState extends State<Navigationbar> {
  DateTime now = DateTime.now(); // Get the current date and time
  String formattedDate = DateFormat(' dd/MM/yyyy    HH:mm:ss').format(DateTime.now()); //
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          Row(
              children: [
                SizedBox(width: 20,),
                Center(
                  child: Container(
                    height: 190,
                    width: 190,
                    child: Image.asset('images/logo.png',fit: BoxFit.contain),),),
              ]),
          Spacer(), // Pushes the next widgets to the right
          Icon(Icons.mail_outline_outlined),
          SizedBox(width: 30), // spacing between icons
          Icon(Icons.notifications_outlined),
          SizedBox(width: 70), // spacing between icons
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Welcome Mdm Wong',
                style: TextStyle(fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                    fontStyle: FontStyle.normal), // Reduce height between lines
              ),
              Text(
                formattedDate,
                style: TextStyle(fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Colors.black54,
                    fontStyle: FontStyle.normal), // Same height to ensure no spacing
              ),
            ],
          ),
          SizedBox(width: 30,),
          Center(
            child: Container(
              height: 50,
              child: CircleAvatar(
                backgroundImage: AssetImage(''),
                radius: 30,
                child: Container(
                  height: 30,
                  width: 100,
                  padding: EdgeInsets.only(left: 25,bottom: 2,top: 10),
                  child: IconButton(
                    onPressed: () {
                      _showPopupMenu(context);
                    }, icon: Icon(Icons.edit_outlined,),
                  ),
                ),

              ),),),
          SizedBox(width: 30), // spacing between the profile and app bar end
        ],
        toolbarHeight: 75.0,
      ),
    );
  }
}

void _showPopupMenu(BuildContext context) {
  showMenu(
    color: Colors.white,
    context: context,
    position: RelativeRect.fromLTRB(100, 70, 5, 300), // Position of the menu
    items: [
      PopupMenuItem<int>(
        value: 0,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //SizedBox(height: 20,),
            Container(
              height: 50,
              child: CircleAvatar(
                backgroundImage: AssetImage(''),
                radius: 30,
                child: Container(
                  height: 30,
                  width: 100,
                  padding: EdgeInsets.only(left: 25,bottom: 2,top: 10),
                  child: IconButton(
                    onPressed: () {
                    }, icon: Icon(Icons.edit_outlined,),
                  ),
                ),),),
            //SizedBox(height: 1,),
            Text('Personal Info Edit',
              style: TextStyle(fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontStyle: FontStyle.normal),),
            SizedBox(height: 7,),
            Divider(
              thickness: 4.0,
              color: Colors.black54,
            ),
            SizedBox(height: 3,),
            Row(
                children: [
                  Container(
                    height: 28,
                    width: 125,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                        ),
                      ),
                    ),),
                  SizedBox(width: 5,),
                  Container(
                    height: 28,
                    width: 125,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                        ),
                      ),
                    ),),
                ]),
            SizedBox(height: 10,),
            Container(
              height: 28,
              width: 330,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                    borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                  ),
                ),

              ),),
            SizedBox(height: 10,),
            Container(
              height: 28,
              width: 330,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                    borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                  ),
                ),
              ),),
            SizedBox(height: 10),
            Row(
                children: [
                  Container(
                    height: 30,
                    width: 135,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        side: MaterialStateProperty.all(
                          BorderSide(color: Colors.yellow, width: 3), // Change border color and width
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10), // Rounded corners
                          ),
                        ),
                      ),
                      child: Text('Change Password',style: TextStyle(
                          fontSize: 10,fontWeight: FontWeight.bold,color: Colors.black)),
                    ),
                  ),

                  SizedBox(width: 10,),
                  Container(
                    height: 30,
                    width: 110,
                    child: Material(
                      elevation: 5.0, // Add shadow/elevation
                      borderRadius: BorderRadius.circular(7), // Rounded corners
                      color: Colors.transparent, // To prevent color overrides
                      child: MaterialButton(
                        onPressed: () {
                          // Action on press
                        },
                        color: Colors.yellow,
                        padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 13),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Text(
                          'Logout',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 50)
                ]),
          ],
        ),
      ),
    ],
  );
}
