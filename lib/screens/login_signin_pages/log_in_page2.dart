import '../../reusable_widgets/log_in_button.dart';
import 'emailval.dart';
import 'face.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../constants.dart';
import '../../reusable_widgets/log_out_button.dart';
import 'GoogleSignIn.dart';
import 'Logging.dart';

class  LogInPage2 extends StatelessWidget {
  //BuildContext context;

  LogInPage2({super.key});
  
  //BuildContext? get context => null;
  //static String id= 'LogInPage2';
  @override
  Widget build(BuildContext context) {
    Future signIn() async {
    final user=await GoogleSignInApi.login();
    
    //var context;
    if (user==null){
      ScaffoldMessenger.of(context).
              showSnackBar(SnackBar(content:Text('sign in failed')));
    }else{
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context)=> LoggedInPage(user:user),
      ));
    } 
    }
    return  Scaffold(
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 60,),
              Text('Let\'s get started',
              style: TextStyle(
                fontSize: 36,fontFamily: 'Neue Plak',
                color: Colors.black,fontWeight: FontWeight.w200,
              )),
              const SizedBox(height: 20,),
              Text(' Sign up or log in to see what\'s\n happening near you',style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500
              ),),
              SizedBox(height: 170,),
              CustomButton(
                onTap: ()
                      {
                        Navigator.push(context,MaterialPageRoute(builder:(context){
                          return EmailValidationScreen();
                        }));
                      },
                text: 'Continue with email address'),
              SizedBox(height: 15,),
               // ignore: prefer_const_constructors
              //  ElevatedButton(
              //   onPressed: signIn,
              //    child:Text('Continue with google'),
              //    style: ButtonStyle(
                  
              //    ),),
               LogOutButton(
                onTap: ()
                        {
                        
       Navigator.push(context,MaterialPageRoute(builder:(context){
         return MyFaceApp();
       }));},
                containerColor: primaryColor,
                text: 'Continue with Facebook',
                icon: Icons.facebook_outlined,
                sizedBoxWidth: 5,
                size: 25,
              ),
               SizedBox(height: 15,),         
                         LogOutButton(
                          onTap: signIn,
                containerColor: primaryColor,
                text: 'Continue with Google',
                icon:FontAwesomeIcons.google,
                sizedBoxWidth: 5,
                size: 23,
              ),
              SizedBox(
                height: 10,
              ),
              Center(child: Text('I bought tickets, but I Do not have an account ',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(54, 89, 227, 1)
              ),))
              
              
              
           
          ],),
        ),
      )
      
    );
  
  }

  

}



