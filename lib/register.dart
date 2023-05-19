import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  Future register() async {
    if(passwordConfirmed()){
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _emailController.text.trim(), password: _passwordController.text.trim());
      Navigator.of(context).pushNamed('/');
    }
  }
  bool passwordConfirmed(){
    if(_passwordController.text.trim() == _confirmPasswordController.text.trim()){
      return true;
    }else{
      return false;
    }
  }

  void openRegisterScreen() {
    Navigator.of(context).pushReplacementNamed('/loginpage');
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [


                  // image
                  Image.asset('images/simlogo.png',
                    height: 150,
                  ),

                  SizedBox(height: 20),




                  // Title
                  Text(
                    "Register",
                    style: GoogleFonts.poppins(
                        fontSize: 40,
                        fontWeight: FontWeight.bold
                    ),
                  ),




                  // Subtitle
                  Text(
                    "Enter you data to register",
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                    ),
                  ),

                  SizedBox(height: 50),





                  // Email TextField
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(12)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Email',
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),







                  // Password TextField
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(12)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(
                          controller: _confirmPasswordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Password',
                          ),
                        ),
                      ),
                    ),
                  ),


                  SizedBox(height: 10),





                  // Confirm Password TextField
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(12)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(
                          controller: _passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Confirm Password',
                          ),
                        ),
                      ),
                    ),
                  ),




                  SizedBox(height: 150),



                  // Login Button
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:25),
                    child: GestureDetector(
                      onTap: register,
                      child: Container(
                        padding: EdgeInsets.all(16) ,
                        decoration: BoxDecoration(
                            color: Colors.blueAccent[400] ,
                            borderRadius: BorderRadius.circular(12) ) ,
                        child: Center(child: Text('Register',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        ),
                      ),
                    ),
                  ),


                  SizedBox(height: 5),






                  // Register Text
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an account ? ',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                        ),),
                      GestureDetector(
                        onTap: openRegisterScreen,
                        child: Text('Login Now',
                          style: GoogleFonts.poppins(
                            color: Colors.blueAccent,
                          ),),
                      )
                    ],
                  )



                ],
              ),
            ),

          ),
        )

    );
  }
}