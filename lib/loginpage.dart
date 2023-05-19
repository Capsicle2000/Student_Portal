import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/bottomnavbar.dart';
import 'package:google_fonts/google_fonts.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  Future login() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim());
  }

  void openRegisterScreen() {
    Navigator.of(context).pushReplacementNamed('/register');
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//         body: Container(
//           margin: EdgeInsets.all(24),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               _header(context),
//               _inputField(context),
//               _forgotPassword(context),
//               _signup(context),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   _header(context) {
//     return Column(
//       children: [
//         Text(
//           "Welcome Back",
//           style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
//         ),
//         Text("Enter your credential to login"),
//       ],
//     );
//   }
//
//   _inputField(context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: [
//         TextField(
//           decoration: InputDecoration(
//               hintText: "Username",
//               border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(18),
//                   borderSide: BorderSide.none),
//               fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
//               filled: true,
//               prefixIcon: Icon(Icons.person)),
//         ),
//         SizedBox(height: 10),
//         TextField(
//           decoration: InputDecoration(
//             hintText: "Password",
//             border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(18),
//                 borderSide: BorderSide.none),
//             fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
//             filled: true,
//             prefixIcon: Icon(Icons.person),
//           ),
//           obscureText: true,
//         ),
//         SizedBox(height: 10),
//         ElevatedButton(
//           onPressed: () {
//             Navigator.pushNamed(context,'/bottomnavbar.');          },
//           child: Text(
//             "Login",
//             style: TextStyle(fontSize: 20),
//           ),
//           style: ElevatedButton.styleFrom(
//             shape: StadiumBorder(),
//             padding: EdgeInsets.symmetric(vertical: 16),
//           ),
//         )
//       ],
//     );
//   }
//
//   _forgotPassword(context) {
//     return TextButton(onPressed: () {}, child: Text("Forgot password?"));
//   }
//
//   _signup(context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Text("Dont have an account? "),
//         TextButton(onPressed: () {}, child: Text("Sign Up"))
//       ],
//     );
//   }
// }
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // image
                  Image.asset(
                    'images/simlogo.png',
                    height: 150,
                  ),

                  SizedBox(height: 20),

                  // Title
                  Text(
                    "Login",
                    style: GoogleFonts.poppins(
                        fontSize: 40, fontWeight: FontWeight.bold),
                  ),

                  // Subtitle
                  Text(
                    "Welcome back! Nice to see you again",
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
                          borderRadius: BorderRadius.circular(12)),
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
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextField(
                          controller: _passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Password',
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 150),

                  // Login Button
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: GestureDetector(
                      onTap: login,
                      child: Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            color: Colors.blueAccent[400],
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(
                          child: Text(
                            'Sign in',
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
                      Text(
                        'Not registered ? ',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                        ),
                      ),
                      GestureDetector(
                        onTap: openRegisterScreen,
                        child: Text(
                          'Register Now',
                          style: GoogleFonts.poppins(
                            color: Colors.blueAccent,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
