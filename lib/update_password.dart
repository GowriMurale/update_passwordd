import 'package:flutter/material.dart';
class UpdatePasswordScreen extends StatelessWidget {
  get child => null;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child:Container(
                padding:  const EdgeInsets.all(10),
                height: 350,
                width: 10,
                child: Image(image: AssetImage(
                    'images/lock.png'),
                  fit: BoxFit.contain,
                  width: screenWidth * 0.10, // 50% of screen width
                  height: screenHeight* 0.5,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding:  const EdgeInsets.all(30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      //padding:  const EdgeInsets.all(1),
                      height: 90,
                      width: 300,
                      child: Image(image: AssetImage(
                          'images/logo.png'),
                        fit: BoxFit.contain,
                      ),),
                    Center(
                      child:Container(
                        height: 50,
                        child: const Text(
                          'Change Password',
                          style: TextStyle(fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                            fontStyle: FontStyle.normal,
                          ),
                          textAlign: TextAlign.right,
                        ),),),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: 360,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('User ID',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,
                              color: Colors.black,fontStyle: FontStyle.normal),),
                          Container(
                            height: 35,
                            width: 330,
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.grey.shade500),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey.shade400), // Border when enabled
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey.shade500), // Border when focused
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey.shade500), // Border when there is an error
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey.shade500), // Border when disabled
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),)
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: 360,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Current Password',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,
                              color: Colors.black,fontStyle: FontStyle.normal),
                          ),
                          Container(
                            height: 35,
                            width: 330,
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey.shade400), // Border when enabled
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey.shade500), // Border when focused
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey.shade500), // Border when there is an error
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey.shade500), // Border when disabled
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),)
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: 360,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('New Password',style:TextStyle(fontSize: 15,fontWeight: FontWeight.w600,
                              color: Colors.black,fontStyle: FontStyle.normal)),
                          Container(
                            height: 35,
                            width: 330,
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(color: Colors.grey, width: 1.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey.shade400), // Border when enabled
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey.shade500), // Border when focused
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey.shade500), // Border when there is an error
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey.shade500), // Border when disabled
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                suffixIcon: IconButton(
                                  icon: Icon(Icons.visibility_off_outlined),
                                  onPressed: () {},
                                ),
                              ),
                            ),)
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),

                    SizedBox(
                      width: 360,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Confirm Password',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,
                              color: Colors.black,fontStyle: FontStyle.normal),),
                          Container(
                            height: 35,
                            width: 330,
                            padding: const EdgeInsets.only( ),
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(color: Colors.black12, width: 1.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey.shade400), // Border when enabled
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey.shade500), // Border when focused
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey.shade500), // Border when there is an error
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey.shade500), // Border when disabled
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                suffixIcon: IconButton(
                                  icon: Icon(Icons.visibility_off_outlined),
                                  onPressed: () {},
                                ),
                              ),
                            ),)
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    Container(
                      child: Center(
                        child: ElevatedButton(
                          onPressed: () {

                          },
                          child: const Text('Update',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),),
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 13),
                            backgroundColor: Colors.yellow,
                            shape:  RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                            ),
                          ),
                        ),
                      ),
                      //SizedBox(height: 30)
                    ),
                    SizedBox(height: 80,width: 300,
                      child:  Divider(

                        color: Colors.grey,
                        thickness: 1.0,
                      ),)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
