import 'package:flutter/material.dart';
class UpdatePasswords extends StatefulWidget {
  const UpdatePasswords({super.key});
  @override
  State<UpdatePasswords> createState() => _UpdatePasswordState();
}
 class _UpdatePasswordState extends State<UpdatePasswords> {
  bool _obscureText = true; // Initially set to true to obscure tex
  bool _obscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(backgroundColor: Colors.transparent,),
      body: LayoutBuilder(
          builder: (context, constraints) {
            // Check the available width and adjust layout accordingly
            if (constraints.maxHeight > 600) {
              // For larger screens like web, tablets, etc. (2-column layout)
              return buildlayout(context);
            } else {
              // For smaller screens like mobile (single column layout)
              return buildLayout(context);
            }
          },
        ),
      );

  }
  Widget buildLayout(BuildContext context) {
    return Row(
         crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        //backgroundColor: Colors.transparent,
        Expanded(
          child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
           children: [
              Container(
                padding: EdgeInsets.all(5),
                height: 450,
                width: 100,
                child: Image(image: AssetImage(
                    'images/lock.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ]),),
             Expanded(
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  //crossAxisAlignment: CrossAxisAlignment.center,
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
                      child: Container(
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
                          const Text('User ID', style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontStyle: FontStyle.normal),),
                          Container(
                            height: 35,
                            width: 330,
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                      color: Colors.grey.shade500),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey.shade400),
                                  // Border when enabled
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey.shade500),
                                  // Border when focused
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey.shade500),
                                  // Border when there is an error
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey.shade500),
                                  // Border when disabled
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
                          const Text('Current Password', style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600,
                              color: Colors.black, fontStyle: FontStyle.normal),
                          ),
                          Container(
                            height: 35,
                            width: 330,
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Colors.grey, width: 1.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey.shade400),
                                  // Border when enabled
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey.shade500),
                                  // Border when focused
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey.shade500),
                                  // Border when there is an error
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey.shade500),
                                  // Border when disabled
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
                          const Text('New Password', style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontStyle: FontStyle.normal)),
                          Container(
                            height: 35,
                            width: 330,
                            child: TextField(
                              obscureText: _obscureText,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Colors.grey, width: 1.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey.shade400),
                                  // Border when enabled
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey.shade500),
                                  // Border when focused
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey.shade500),
                                  // Border when there is an error
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey.shade500),
                                  // Border when disabled
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _obscureText ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                                  ),
                                  onPressed: (){
                                    setState(() {
                                      _obscureText = !_obscureText; // Toggle the obscureText boolean
                                    });
                                  }
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
                          const Text('Confirm Password', style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontStyle: FontStyle.normal),),
                          Container(
                            height: 35,
                            width: 330,
                            padding: const EdgeInsets.only(),
                            child: TextField(
                              obscureText: _obscure,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Colors.black12, width: 1.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey.shade400),
                                  // Border when enabled
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey.shade500),
                                  // Border when focused
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey.shade500),
                                  // Border when there is an error
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey.shade500),
                                  // Border when disabled
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    // Choose icon based on the obscureText boolean
                                    _obscure ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                                  ),
                                  onPressed: (){
                                    setState(() {
                                      _obscure = !_obscure; // Toggle the obscureText boolean
                                    });
                                  },
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
                          onPressed: () {},
                          child: const Text('Update', style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),),
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 60, vertical: 13),
                            backgroundColor: Colors.yellow,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                            ),
                          ),
                        ),
                      ),
                      //SizedBox(height: 30)
                    ),
                    SizedBox(height: 80, width: 300,
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1.0,
                      ),)
                  ],
                ),
              ),
             )],
        );
  }

  Widget buildlayout(BuildContext context) {
    final screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    final screenHeight = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
               /*Container(
                padding: EdgeInsets.all(5),
                height: 100,
                width: 50,
                child: Image(image: AssetImage(
                    'images/lock.png'),
                  fit: BoxFit.contain,
                  width: screenWidth * 0.10, // 50% of screen width
                  height: screenHeight * 0.5,
                ),
              ),*/
              Padding(
                padding: EdgeInsets.all(40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding:  const EdgeInsets.all(10),
                      height: 90,
                      width: 300,
                      child: Image(image: AssetImage(
                          'images/logo.png'),
                        fit: BoxFit.contain,
                      ),),
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 70,
                      width: 200,
                      child: Image(image: AssetImage(
                          'images/lock.png'),
                        fit: BoxFit.contain,
                        width: screenWidth * 0.5, // 50% of screen width
                        height: screenHeight * 0.3,
                      ),
                    ),
                    Center(
                      child: Container(
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
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(padding: EdgeInsets.only(left: 7),
                          child: Text('User ID', style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontStyle: FontStyle.normal),),),
                          Container(
                            height: 35,
                            width: 335,
                            padding: EdgeInsets.only(left: 7),
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                      color: Colors.grey.shade500),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey.shade400),
                                  // Border when enabled
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey.shade500),
                                  // Border when focused
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey.shade500),
                                  // Border when there is an error
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey.shade500),
                                  // Border when disabled
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
                        Padding(padding: EdgeInsets.only(left: 7),
                          child:  Text('Current Password', style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600,
                              color: Colors.black, fontStyle: FontStyle.normal),
                          ),),
                          Container(
                            height: 35,
                            width: 330,
                            padding: EdgeInsets.only(left: 7),
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Colors.grey, width: 1.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey.shade400),
                                  // Border when enabled
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey.shade500),
                                  // Border when focused
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey.shade500),
                                  // Border when there is an error
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey.shade500),
                                  // Border when disabled
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
                        Padding(padding: EdgeInsets.only(left: 7),
                          child:  Text('New Password', style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontStyle: FontStyle.normal)),),
                          Container(
                            height: 35,
                            width: 330,
                            padding: EdgeInsets.only(left: 7),
                            child: TextField(
                              obscureText: _obscureText,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Colors.grey, width: 1.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey.shade400),
                                  // Border when enabled
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey.shade500),
                                  // Border when focused
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey.shade500),
                                  // Border when there is an error
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey.shade500),
                                  // Border when disabled
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                suffixIcon: IconButton(
                                    icon: Icon(
                                      _obscureText ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                                    ),
                                    onPressed: (){
                                      setState(() {
                                        _obscureText = !_obscureText; // Toggle the obscureText boolean
                                      });
                                    }
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
                         Padding(padding: EdgeInsets.only(left: 7),
                          child:  Text('Confirm Password', style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontStyle: FontStyle.normal),),),
                          Container(
                            height: 35,
                            width: 330,
                            padding: EdgeInsets.only(left: 7),
                            child: TextField(
                              obscureText: _obscure,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                      color: Colors.black12, width: 1.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey.shade400),
                                  // Border when enabled
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey.shade500),
                                  // Border when focused
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey.shade500),
                                  // Border when there is an error
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey.shade500),
                                  // Border when disabled
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    // Choose icon based on the obscureText boolean
                                    _obscure ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                                  ),
                                  onPressed: (){
                                    setState(() {
                                      _obscure = !_obscure; // Toggle the obscureText boolean
                                    });
                                  },
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
                          onPressed: () {},
                          child: const Text('Update', style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),),
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 60, vertical: 13),
                            backgroundColor: Colors.yellow,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                            ),
                          ),
                        ),
                      ),
                      //SizedBox(height: 30)
                    ),
                    SizedBox(height: 80, width: 300,
                      child: Divider(
                        color: Colors.grey,
                        thickness: 1.0,
                      ),)
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
