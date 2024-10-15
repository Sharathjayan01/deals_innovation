import 'package:destion_intern/login.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'lib/assests/logo.webp',
                  width: 80,
                  height: 80,
                ),
                const Text(
                  '!DealMart',
                  style: TextStyle(fontSize: 30.0),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              child: const Text(
                "Welcome to !DealMart",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Create an Account',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Row(
              children: [
                Text(
                  '     Required',
                  style: TextStyle(fontSize: 15.0),
                ),
                Text(
                  '*',
                  style: TextStyle(color: Colors.red),
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.all(18),
              child: const TextField(
                // controller: locationController,
                style: TextStyle(color: Colors.grey),
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
                  prefixIcon: Icon(Icons.email),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                  ),
                ),
                cursorColor: Colors.black,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Text(
                  '     Required',
                  style: TextStyle(fontSize: 15.0),
                ),
                Text(
                  '*',
                  style: TextStyle(color: Colors.red),
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.all(18),
              child: const TextField(
                // controller: locationController,
                style: TextStyle(color: Colors.grey),
                decoration: InputDecoration(
                  hintText: 'Full Name',
                  hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
                  prefixIcon: Icon(Icons.person),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                  ),
                ),
                cursorColor: Colors.black,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              padding: const EdgeInsets.all(18),
              child: const TextField(
                // controller: locationController,
                style: TextStyle(color: Colors.grey),
                decoration: InputDecoration(
                  hintText: '123-456-7890',
                  hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
                  prefixIcon: Icon(Icons.person),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                  ),
                ),
                cursorColor: Colors.black,
              ),
            ),
            const Row(
              children: [
                Text(
                  '     Required',
                  style: TextStyle(fontSize: 15.0),
                ),
                Text(
                  '*',
                  style: TextStyle(color: Colors.red),
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.all(18),
              child: const TextField(
                // controller: locationController,
                style: TextStyle(color: Colors.grey),
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                  ),
                ),
                cursorColor: Colors.black,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Row(
              children: [
                Text(
                  '     Required',
                  style: TextStyle(fontSize: 15.0),
                ),
                Text(
                  '*',
                  style: TextStyle(color: Colors.red),
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.all(18),
              child: const TextField(
                // controller: locationController,
                style: TextStyle(color: Colors.grey),
                decoration: InputDecoration(
                  hintText: 'Retype Password',
                  hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                  ),
                ),
                cursorColor: Colors.black,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Row(
              children: [
                Text(
                  '     Required',
                  style: TextStyle(fontSize: 15.0),
                ),
                Text(
                  '*',
                  style: TextStyle(color: Colors.red),
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.all(18),
              child: const TextField(
                // controller: locationController,
                style: TextStyle(color: Colors.grey),
                decoration: InputDecoration(
                  hintText: 'M8V 0C2',
                  hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
                  prefixIcon: Icon(Icons.place),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                  ),
                ),
                cursorColor: Colors.black,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              padding: const EdgeInsets.all(18),
              child: const TextField(
                // controller: locationController,
                style: TextStyle(color: Colors.grey),
                decoration: InputDecoration(
                  hintText: 'Refferel Code (Optional)',
                  hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
                  prefixIcon: Icon(Icons.code),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                  ),
                ),
                cursorColor: Colors.black,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            OutlinedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Center(
                      child: Text('SUCCESFULLY CREATED'),
                    ),
                  ),
                );
              },
              style: OutlinedButton.styleFrom(
                backgroundColor: const Color(0xFF2B5B4E),
                padding:
                    const EdgeInsets.symmetric(horizontal: 150, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                side: const BorderSide(color: Color(0xFF2B5B4E)),
              ),
              child: const Text(
                'Signup',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(
                  child: Text(
                    'Already have an account? ',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Color(0xFF2B5B4E), fontSize: 15),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'By continuing, you agree to our ',
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  'Terms of Services',
                  style: TextStyle(color: Color(0xFF2B5B4E), fontSize: 15),
                )
              ],
            ),
            const Text(
              'and Privacy Policy',
              style: TextStyle(color: Color(0xFF2B5B4E), fontSize: 15),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
