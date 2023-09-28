// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../routes/app_pages.dart';

class CheckEmailPage extends StatelessWidget {
  const CheckEmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    // Function to resend the email verification link
    Future<void> resendEmailVerification() async {
      try {
        await user?.sendEmailVerification();
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Verification email sent. Please check your inbox.'),
          ),
        );
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
                'Failed to send verification email. Please try again later.'),
          ),
        );
      }
    }

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 253, 252, 252),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Spacer(),
                const Column(
                  children: [
                    Text(
                      "Check Your Email",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
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
                const SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    Image.asset('assets/images/checkmail.png'),
                    const SizedBox(
                      height: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Email",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'olalekan@gmail.com',
                            border: InputBorder.none,
                            filled: true,
                            fillColor: Color.fromARGB(251, 255, 255, 255),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 55,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      GoRouter.of(context).pushNamed(AppRoutes.passwordSuccess);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 20, 2, 100),
                    ),
                    child: const Text(
                      "Open Your Email",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 19,
                ),
                SizedBox(
                  height: 55,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      context.go('/login');
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: const Color.fromARGB(255, 20, 2, 100),
                      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: const Text(
                      "Back to Login",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("You have not received the email? "),
                    const SizedBox(
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
                      child: const Text("Resend"),
                    )
                  ],
                ),
                const Spacer()
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
