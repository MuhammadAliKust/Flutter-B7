import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Column(
        children: [
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                label: Text("Email"),
                hintText: 'test@gmail.com',
                prefixIcon: Icon(Icons.email),
                suffixIcon: Icon(Icons.email)),
          ),
          TextField(
            keyboardType: TextInputType.emailAddress,
            // obscureText: true,
            decoration: InputDecoration(
                label: Text("Password"),
                hintText: 'Password must be 6 or more characters',
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.visibility)),
          ),
          SizedBox(height: 30,),
          ElevatedButton(onPressed: (){}, child: Text("Login"))
        ],
      ),
    );
  }
}
