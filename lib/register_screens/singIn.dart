import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travelapp/homePages/bottomNavigation.dart';

class singin extends StatelessWidget {
  const singin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    child: Stack(
                      children: [
                        Container(
                          height: 770,
                          width: 700,
                          child:ClipRRect(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(50),
                              bottomRight: Radius.circular(50),
                            ),
                            child: Image.asset('./images/bg2.jpg', fit: BoxFit.cover,),
                          )
                        ),
                     
                        // ......................back gound white waaye
                        Container(
                          margin: EdgeInsets.only(top: 200, left: 10, right: 10),
                          width: 400,
                          height: 500,
                          decoration: BoxDecoration(
                           boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3)
                            )
                           ],
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(100),
                              topRight: Radius.circular(100),
                              bottomLeft: Radius.circular(50),
                              bottomRight: Radius.circular(50),
                            )
                          ),
                          child:Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 40, left: 27),
                                alignment: Alignment.topLeft,
                                child: Text('Welcome back \n Alice', style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 28,letterSpacing: 2,color: Colors.black.withOpacity(0.8)
                                ),),
                              ),
                              Container(
                                width: 800,
                                padding: EdgeInsets.only(left: 30, right: 30, top: 30),
                                child: TextField(
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.email),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                labelText: 'Email',
                                labelStyle: TextStyle(fontSize: 17, color: Colors.indigo,fontWeight: FontWeight.w300),
                                contentPadding: EdgeInsets.only(top: 10, bottom: 10),
                                hintText: 'example@123.com'
                                    
                                  ),
                                 
                                ),
                              ),
                             
                                Container(
                                width: 800,
                                padding: EdgeInsets.only(left: 30, right: 30, top: 40),
                                child: TextField(
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.person),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                labelText: 'Password',
                                labelStyle: TextStyle(fontSize: 17, color: Colors.indigo,fontWeight: FontWeight.w300),
                                contentPadding: EdgeInsets.only(top: 10, bottom: 10),
                                hintText: 'xxxx-xxxx'
                                    
                                  ),
                                 
                                ),
                              ),

                              Container(
                                width: 300,
                                height: 60,
                                margin: EdgeInsets.only(top: 30),
                                child: ElevatedButton
                                (
                                  onPressed: (){
                                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => bottomNavaigation()));
                                    
                                  }, 
                                child: Text('Sing In'),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.red,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))
                                ),
                                ),),

                                Container(
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.only(top: 20),
                                  child: Text('Or Sing in with', style: TextStyle(color: Colors.grey, letterSpacing: 3),),),


                                  Container(
                                  margin: EdgeInsets.only(top: 10),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(child: IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.google, color: Colors.red[200],)),),
                                        Container(child: IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.facebook, color: Colors.blue,)),),
                                        Container(child: IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.twitter, color: Colors.blue[400],)),),
                                      ],
                                    ),
                                  )



                            

                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}