import 'package:flutter/material.dart';

class SigninScreen extends StatelessWidget {
  final email =TextEditingController();
  final password =TextEditingController();
  SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/focal.png',width: 60,height: 60,) ,// Logo
              // Replace with your logo


              SizedBox(height: 15),

              // Email TextField
              TextFormField(
                controller:email ,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Email',
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              SizedBox(height: 15),

              // Password TextField
              TextFormField(
                controller: password,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                  suffixIcon: Icon(Icons.visibility_off),
                ),
              ),

              SizedBox(height: 20),

              // Sign Up Button
              ElevatedButton(
                onPressed: () {},
                child: Text('Log in',style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              SizedBox(height: 20),
              InkWell(child: Text('Forgot Password?',style: TextStyle(color: Colors.blue),),),
              SizedBox(height: 20),

              // OR divider
              Row(
                children: [
                  Expanded(child: Divider()),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text('or'),
                  ),
                  Expanded(child: Divider()),
                ],
              ),

              SizedBox(height: 20),

              // Facebook Login Button
              OutlinedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.facebook, color: Colors.white),
                label: Text('Log in with Facebook'),
                style: OutlinedButton.styleFrom(backgroundColor: Colors.blue,
                  foregroundColor: Colors.white, minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),

              SizedBox(height: 10),

              // Google Login Button
              OutlinedButton.icon(
                onPressed: () {},
                icon: Image.asset('assets/images/R.png',width: 30,height: 30,),
                label: Text('Log in with Google'),
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.black, minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),

              SizedBox(height: 80),

              // Terms of Service and Privacy Policy


              // Log in link
              Row(mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,children: [
                  Text('Don\'t have an account?'),
                  InkWell(child: Text('Sign Up',style: TextStyle(color: Colors.blue),),onTap: null,)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
