import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class CheckEmailPage extends StatelessWidget {
  const CheckEmailPage({Key? key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    // Function to resend the email verification link
    Future<void> resendEmailVerification() async {
      try {
        await user?.sendEmailVerification();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Verification email sent. Please check your inbox.'),
          ),
        );
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Failed to send verification email. Please try again later.'),
          ),
        );
      }
    }

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 253, 252, 252),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Spacer(),
                Column(
                  children: [
                    Text(
                      "Check Your Email",
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "We have sent the reset password to the email address olalekan789@gmial.com",
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    Image.asset('assets/images/checkmail.png'),
                    SizedBox(
                      height: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Email",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'olalekan@gmail.com',
                            border: InputBorder.none,
                            filled: true,
                            fillColor: Color.fromARGB(251, 255, 255, 255),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 55,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/passwordsuccess');
                    },
                    child: Text(
                      "Open Your Email",
                      style: TextStyle(fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 20, 2, 100),
                    ),
                  ),
                ),
                SizedBox(
                  height: 19,
                ),
                SizedBox(
                  height: 55,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/login');
                    },
                    child: Text(
                      "Back to Login",
                      style: TextStyle(fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Color.fromARGB(255, 20, 2, 100),
                      backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("You have not received the email? "),
                    SizedBox(
                      width: 3,
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.amber,
                      ),
                      onPressed: () {
                        // Call the resendEmailVerification function when the button is pressed
                        resendEmailVerification();
                      },
                      child: Text("Resend"),
                    )
                  ],
                ),
                Spacer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}



// import 'package:flutter/material.dart';

// class CheckEmailPage extends StatelessWidget {
//   const CheckEmailPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromARGB(255, 253, 252, 252),
//       body: SingleChildScrollView(
//         child: SizedBox(
//           height: MediaQuery.of(context).size.height,
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             child: Column(
//               children: [
//                 Spacer(),
//                 Column(
//                   children: [
//                     Text(
//                       "Check Your Email",
//                       style:
//                           TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Text(
//                       "We have sent the reset password to the email address olalekan789@gmial.com",
//                       textAlign: TextAlign.center,
//                     )
//                   ],
//                 ),
//                 SizedBox(
//                   height: 30,
//                 ),
//                 Column(
//                   children: [
//                     Image.asset('assets/images/checkmail.png'),
//                     SizedBox(
//                       height: 30,
//                     ),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Email",
//                           style: TextStyle(
//                               fontSize: 16, fontWeight: FontWeight.bold),
//                         ),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         TextFormField(
//                           decoration: InputDecoration(
//                             hintText: 'olalekan@gmail.com',
//                             border: InputBorder.none,
//                             filled: true,
//                             fillColor: Color.fromARGB(251, 255, 255, 255),
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 30,
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 SizedBox(
//                   height: 55,
//                   width: double.infinity,
//                   child: ElevatedButton(
//                     onPressed: () {
//                       Navigator.of(context).pushNamed('/passwordsuccess');
//                     },
//                     child: Text(
//                       "Open Your Email",
//                       style: TextStyle(fontSize: 18),
//                     ),
//                     style: ElevatedButton.styleFrom(
//                         backgroundColor: Color.fromARGB(255, 20, 2, 100)),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 19,
//                 ),
//                 SizedBox(
//                   height: 55,
//                   width: double.infinity,
//                   child: ElevatedButton(
//                     onPressed: () {
//                       Navigator.of(context).pushNamed('/login');
//                     },
//                     child: Text(
//                       "Back to Login",
//                       style: TextStyle(fontSize: 18),
//                     ),
//                     style: ElevatedButton.styleFrom(
//                       foregroundColor: Color.fromARGB(255, 20, 2, 100),
//                       backgroundColor: Color.fromARGB(255, 255, 255, 255),
//                     ),
//                   ),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text("You have not received the email? "),
//                     SizedBox(
//                       width: 3,
//                     ),
//                     TextButton(
//                         style: TextButton.styleFrom(
//                           foregroundColor: Colors.amber,
//                         ),
//                         onPressed: () {
                        
//                         },
//                         child: Text("Resend"))
//                   ],
//                 ),
//                 Spacer()
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
