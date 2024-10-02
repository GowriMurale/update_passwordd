import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class Navigationbars extends StatefulWidget {
  const Navigationbars({super.key});
  @override
  State<Navigationbars> createState() => _NavigationbarsState();
}
class _NavigationbarsState extends State<Navigationbars> {

  DateTime now = DateTime.now(); // Get the current date and time
  String formattedDate = DateFormat(' dd/MM/yyyy    HH:mm:ss').format(DateTime.now()); //
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(''),
        flexibleSpace: Container(
          decoration: BoxDecoration(
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0), // Height of the border
          child: Container(
            color: Colors.black12, // Border color
            height: 1.0, // Height of the border
          ),
        ),
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

          Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Container(
                  width: 15.0,  // Set the width
                  height: 15.0, // Set the height
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,  // Circular shape
                    color: Colors.yellow,      // Background color
                  ),
                  child: Center(
                    child: Text(
                      '1',
                      style: TextStyle(fontSize:9,fontWeight:FontWeight.bold,color: Colors.black),
                    ),
                  ),
                ),]),
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
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
           children: [
           Center(
            child: Container(
              height: 75,
              child: CircleAvatar(
                backgroundImage: AssetImage('images/image.png'),
                radius: 30,
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  //mainAxisSize: MainAxisSize.max,
                  children: [
                  Container(
                    height:22,
                    width: 500,
                  padding: EdgeInsets.only(left: 29,top: 3,),
                   child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.grey.shade300,
                        shape: CircleBorder()
                      ),
                      onPressed: () {
                        _showPopupMenu(context);
                      }, child: Icon(Icons.edit_outlined,size: 9,color: Colors.black87,)
                  ),)])
                ),
              ),),]),
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
            SizedBox(height: 10,),
            Container(
              height: 70,
              child: CircleAvatar(
                backgroundImage: AssetImage('images/image.png'),
                radius: 30,
                child: Container(
                  width: 100, // Width of the button
                  height: 30, // Height of the button
                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 13) ,
                  child: IconButton(
                      color: Colors.black,
                      iconSize: 15,
                      padding: EdgeInsets.all(20),
                      onPressed: () {
                        _showPopupMenu(context);
                      }, icon: Icon(Icons.photo_camera_outlined,)
                  ),
                ),
                  ),
                ),

            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 20,
                  padding: EdgeInsets.only(left: 12),
                  child:Text('Personal Info',
                  style: TextStyle(fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                  fontStyle: FontStyle.normal),)
                ),
                SizedBox(width: 90,),
               RichText(
                text: TextSpan(
                 children: [
                TextSpan(
                  text: 'Edit',
                  style: TextStyle(fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue,
                    fontStyle: FontStyle.normal,
                    decoration: TextDecoration.underline,
                  ),
                  // Use GestureRecognizer to detect taps
                ),
              ]),)]),
            SizedBox(height: 7,),
            Divider(
              thickness: 1.5,
              color: Colors.black45,
            ),
            SizedBox(height: 3,),
            Container(
              height: 32,
              width: 280,
              decoration: BoxDecoration(
                color: Colors.white, // Background color of the container
                border: Border.all(
                  color: Colors.grey, // Border color
                  width: 1, // Border width
                ),
                borderRadius: BorderRadius.circular(7), // Optional: rounded corners
              ),

              child: Row(
                  children: [
                    SizedBox(width: 20,),
                    Text('Mdm',
                      style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black87),),]),
            ),
            SizedBox(height: 10,),
            Container(
              height: 32,
              width: 280,
              decoration: BoxDecoration(
                color: Colors.white, // Background color of the container
                border: Border.all(
                  color: Colors.grey, // Border color
                  width: 1, // Border width
                ),
                borderRadius: BorderRadius.circular(7), // Optional: rounded corners
              ),
              child: Row(children: [
                SizedBox(width: 20,),
                Text(
                  '8056863355',
                  style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black87),),
              ]),),
            SizedBox(height: 10,),
            Container(
              width: 280,
              height: 32,
              decoration: BoxDecoration(
                color: Colors.white, // Background color of the container
                border: Border.all(
                  color: Colors.grey, // Border color
                  width: 1, // Border width
                ),
                borderRadius: BorderRadius.circular(7), // Optional: rounded corners
              ),
              child:Row(children: [
                SizedBox(width: 20,),
                Text(
                  'Adinin@gmail.com',
                  style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black87),
                ),
              ]),),

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
                            borderRadius: BorderRadius.circular(7), // Rounded corners
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
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.yellow,
                        shape: RoundedRectangleBorder(

                          borderRadius: BorderRadius.circular(7), // Rounded corners
                        ),
                      ),
                      child: Row(
                        children: [
                         SizedBox(width: 20,) ,
                         Text('Logout',style: TextStyle(
                          fontSize: 10,fontWeight: FontWeight.bold,color: Colors.black)),
                          SizedBox(width: 5,) ,
                          Icon(Icons.logout_outlined),
                     ]),
                  ),),
                   SizedBox(height: 50)
                  ]),
          ],
        ),
      ),
    ],
  );
}
