import'package:flutter/material.dart';
import 'package:grad/view/signin_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final  email= TextEditingController();
  final  fullName=TextEditingController();
  final password = TextEditingController();

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

              SizedBox(height: 50),

              // Fullname TextField
              TextFormField(
                controller: fullName,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintText: 'Fullname',
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

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
                child: Text('Sign Up',style: TextStyle(color: Colors.white),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),

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

              SizedBox(height: 20),

              // Terms of Service and Privacy Policy
              Text.rich(
                TextSpan(
                  text: 'By signing up you accept the ',
                  style: TextStyle(color: Colors.grey),
                  children: [
                    TextSpan(
                      text: 'Terms of Service',
                      style: TextStyle(color: Colors.blue),
                    ),
                    TextSpan(
                      text: '\n and ',
                      style: TextStyle(color: Colors.grey),
                    ),
                    TextSpan(
                      text: 'Privacy Policy',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 20),

              // Log in link
              Row(mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,children: [
                  Text('Already have an account?'),
                  InkWell(child: Text('Log in',style: TextStyle(color: Colors.blue)),onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>  SigninScreen()));
                  },)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
