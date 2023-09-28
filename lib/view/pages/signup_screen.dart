import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:roadside_assistant_app_ui/controller/provider/auth_provider.dart';

class SignupPage extends ConsumerWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final fullNameController = TextEditingController();

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
                      "Create an Account",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Full Name",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: fullNameController,
                          decoration: const InputDecoration(
                            hintText: 'John Joe',
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
                          controller: emailController,
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Password",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: passwordController,
                          obscureText: true,
                          decoration: const InputDecoration(
                            hintText: '******',
                            border: InputBorder.none,
                            filled: true,
                            fillColor: Color.fromARGB(251, 255, 255, 255),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                // Other widgets...

                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 55,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () async =>
                        // Call the signUp method when the "Sign Up" button is pressed
                        await ref.watch(authProvider).signUp(
                              context,
                              emailController.text,
                              passwordController.text,
                            ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 20, 2, 100),
                    ),
                    child: const Text(
                      "Sign Up",
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
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: const Color.fromARGB(255, 20, 2, 100),
                      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/download (1).png',
                          width: 40,
                          height: 40,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text(
                          "Sign up with Google",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Have have an account ? "),
                    const SizedBox(
                      width: 3,
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.amber,
                      ),
                      onPressed: () {
                        context.go('/login');
                      },
                      child: const Text("Sign In"),
                    )
                  ],
                ),
                const Spacer()
                // Other widgets...
              ],
            ),
          ),
        ),
      ),
    );
  }
}
