import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // email controller declare
  TextEditingController emailController= TextEditingController();
  // password controller
  TextEditingController passwordController= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Text Field Example", style: TextStyle(
          color: Colors.white,
        ),),
      ),
      body: Column(
        children: [
          //email
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(

              //email cintroler
              controller: emailController,// ei field er controller email controller

              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Email" ,

                hintText: "Enter your email",
                prefixIcon: Icon(Icons.email),
              ),
            ),
          ),
          
          
          //password
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(

              //password controller
              controller: passwordController,
              obscureText: true, //for hide password
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Password" ,

                hintText: "Enter your password",
                prefixIcon: Icon(Icons.lock),
              ),
            ),
          ),

          //button
          SizedBox(
            width: 200,
            child: ElevatedButton(

              style: ElevatedButton.styleFrom(
                minimumSize: Size.fromHeight(50),
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )
              ),

                onPressed: ()
            {

              //user i/p dibe sob string type er & controller er help e data nite hobe
              String email= emailController.text; //emailController.text likar fole email feild e user jah i/p diche seta email variable e ese jabe
              String password= passwordController.text;// password i.p pelam


              //validation
              // @ and . na thakle msg dekabe wrong tai ! dite hbe age
              if(!email.contains("@") ||  !email.contains("."))
                {
                  Fluttertoast.showToast(msg: "Wrong email addres");
                }
              else if(password.length<4)
                {
                  Fluttertoast.showToast(msg: "Password minimum 4 digit");
                }

              else
                {
                  Fluttertoast.showToast(msg: "Success. Email:"+email+ " Password: "+password);
                }

              //ekta msg e eigula dekate cacchi..as eikahne toast jehetu nai..tai toast library add kore kaj krte hobe
              // user jah i/p dibe seta dekte chai
             // Fluttertoast.showToast(msg: "Email:"+email+ " Password: "+password);




            },
                child: Text("Submit", style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),)),
          )
        ],
      ),
    );
  }
}
