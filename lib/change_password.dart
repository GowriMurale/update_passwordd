import 'package:flutter/material.dart';
class UpdatePassword extends StatefulWidget {
  const UpdatePassword({super.key});
  @override
  State<UpdatePassword> createState() => _UpdatePasswordState();
}
class _UpdatePasswordState extends State<UpdatePassword> {
  bool _obscureText = true; // Initially set to true to obscure tex
  bool _obscure = true;
  bool isloading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            // Wide screen (web or tablet) - Show image and form side by side
            return _buildWideLayout();
          } else {
            // Narrow screen (mobile) - Stack image and form vertically
            return _buildNarrowScreenLayout();
          }
        },
      ),
    );
  }
  // Layout for wide screens (image on left, form on right)
  Widget _buildWideLayout() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
          child: Image.asset(
            'images/lock.png', // Replace with your image URL or asset path
            width: 300,
            height: 400,
          ),
        ),
        SizedBox(height: 30), // Space between image and form
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(1),
                  height: 100,
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
                /*SizedBox(
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
                        padding: EdgeInsets.only(),
                        child: TextField(
                          obscureText: _obscure,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
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
                                _obscure ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                              ),
                              onPressed: () {
                                _obscure = !_obscure;
                              },
                            ),
                          ),
                        ),)
                    ],
                  ),
                ),*/
                const SizedBox(height: 30),
                Container(
                  child: Center(
                    child: isloading
                        ? CircularProgressIndicator(color: Colors.yellow,) // Show spinner when loading
                        : MaterialButton(
                          onPressed: _handleUpdateButton,
                          color: Colors.yellow,
                          padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 13),
                          shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(0),
                      ),
                         child: Text(
                         'Update',
                         style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  //SizedBox(height: 30)
                ),
                SizedBox(height: 50, width: 300,
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1.0,
                  ),)
              ],
            ),
          ),
        ),

      ],
    );
  }

  // Layout for narrow screens (image on top, form below)
  Widget _buildNarrowScreenLayout() {
    return Column(
        children: [
          Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Image.asset(
                    'images/logo.png',
                    // Placeholder image, replace with your image
                    fit: BoxFit.contain,
                    height: 80,
                    width: 300,
                  ),
                ),SizedBox(height: 5,),
                Image(image: AssetImage(
                    'images/lock.png'),
                  height: 150,
                  width: 400,
                  fit: BoxFit.contain,
                ),Center(
                    child: Text(
                      'Change Password',
                      style: TextStyle(fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        fontStyle: FontStyle.normal,
                      ),
                      textAlign: TextAlign.right,
                    ),),
                SizedBox(height: 5),
                SizedBox(
                  width: 300,
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
                  width: 300,
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
                  width: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('New Password', style: TextStyle(
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
                            suffixIcon: IconButton(
                              icon: Icon(_obscureText ? Icons.visibility_off_outlined : Icons.visibility_outlined,),
                              onPressed: () {
                                _obscureText = !_obscureText;
                              },
                            ),
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
                  width: 300,
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
                        padding:EdgeInsets.only(),
                        child: TextField(
                          obscureText: _obscure,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
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
                              icon: Icon(_obscure ? Icons.visibility_off_outlined : Icons.visibility_outlined,),
                              onPressed: () {
                                _obscureText = !_obscureText;
                              },
                            ),
                          ),
                        ),)
                    ],
                  ),
                ),
                 SizedBox(height: 20),
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
                SizedBox(height: 70, width: 300,
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1.0,
                  ),)
              ])
        ]);
  }
   Future<void> _handleUpdateButton() async {
    setState(() {
      isloading = true; // Show the spinner
    });
    await Future.delayed(Duration(seconds: 2));
    setState(() {
      isloading = false; // Hide the spinner
    });

  }
}
  // The form with four TextFields and a button
