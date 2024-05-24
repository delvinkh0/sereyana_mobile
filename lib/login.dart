import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:serenaya_2/provider/auth_provider.dart';
import 'home.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<MyAuthProvider>(context);

    return Scaffold(
      backgroundColor: Color(0xFF132043),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: authProvider.form,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/login.png'), // Replace with your image path
              SizedBox(height: 30),
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFF8DADD),
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
                keyboardType: TextInputType.emailAddress,
                onSaved: (value) {
                  authProvider.enteredEmail = value!;
                },
                validator: (value) {
                  if (value == null || value.isEmpty || !value.contains('@')) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFF8DADD),
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
                onSaved: (value) {
                  authProvider.enteredPassword = value!;
                },
                validator: (value) {
                  if (value == null || value.isEmpty || value.length < 6) {
                    return 'Password must be at least 6 characters long';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  await authProvider.submit();
                  if (FirebaseAuth.instance.currentUser != null) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => MyHomePage()),
                    );
                  } else {
                    // Show error message
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Login failed')),
                    );
                  }
                },
                child: Text(
                  authProvider.isLogin ? 'Login' : 'Register',
                  style: TextStyle(color: Color(0xFF132043)),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFF8DADD),
                ),
              ),
              TextButton(
                onPressed: authProvider.switchAuthMode,
                child: Text(
                  authProvider.isLogin
                      ? 'Create new account'
                      : 'I already have an account',
                  style: TextStyle(color: Color(0xFFF8DADD)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
