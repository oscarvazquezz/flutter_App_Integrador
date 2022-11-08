import 'package:c3_1/dashboard/dashboard.dart';
import 'package:flutter/material.dart';

import 'package:localstorage/localstorage.dart';

class LoginComponent extends StatelessWidget{
   // crossAxisAlignment: CrossAxisAlignment.start,
   // Obtain shared preferences.
  @override
  Widget build(BuildContext context) {
    
    return Center(
      
      child: SizedBox.expand(
        child: Container(
          decoration: const BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment(0.0, 1.0), // 10% of the width, so there are ten blinds.
              colors: const <Color>[
                Color(0xFF2E353D),
                Color(0xFF2E353D),
              ], // red to yellow
              tileMode: TileMode.repeated, // repeats the gradient over the canvas
            ),
          ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:<Widget>[
            
            Container(
         
              height: 500,
              margin: EdgeInsets.only(
                        top: 100.0,
                        left: 20.0,
                        right: 20.0
                    ),
              
              child:Column(
                children:[
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(
                            top: 10.0,
                            left: 20.0,
                            right: 20.0
                        ),

                      height: 110,
                      width: 400,
                      
                      //Text 
                      child: Column(
                        children: [
                          Stack(
                              children: [
                                Text(
                                  'ION',
                                  style: TextStyle(
                                    fontSize: 40,
                                    letterSpacing: 5,
                                    fontWeight: FontWeight.bold,
                                    foreground: Paint()
                                      ..style = PaintingStyle.stroke
                                      ..strokeWidth = 5
                                      ..color = Colors.blue.shade900,
                                  ),
                                ),
                                // The text inside
                                const Text(
                                  'ION',
                                  style: TextStyle(
                                    fontSize: 40,
                                    letterSpacing: 5,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 10.0,
                            ),
                            child:Text(
                              'MetaZone',
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color:Colors.white),
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.only(
                              top: 10.0,
                            ),
                            child:Text(
                              'Información de Warzone',
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color:Colors.white),
                            ),
                          ),
                        ],
                      ),

                    ),
                  ),

                  Center(
                      //Login Component Container
                      child: Container(

                        margin: EdgeInsets.only(
                            top: 10.0,
                            left: 20.0,
                            right: 20.0
                        ),
                        
                        width: 400,
                        height: 350,
                        
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          shape: BoxShape.rectangle,
                          boxShadow: <BoxShadow>[
                            BoxShadow (
                              color: Colors.black,
                            )
                          ]
                        ),
                      
                      child:Column(
                        
                        children: [
                        
                          Icon(Icons.person,color:Colors.blue,size: 100),

                          Container(  
                            width: 300,
                            margin: EdgeInsets.only(
                              top: 20.0,
                              left: 0.0
                            ),
                            child: TextField(
                                obscureText: false,
                                decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white, width: 2.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white, width: 2.0),
                                      
                                    ),
                                  labelText: 'Email',
                                  labelStyle: new TextStyle(color: Colors.white),
                                ),
                            ),
                          ),

                          Container(
                            width: 300,
                            margin: EdgeInsets.only(
                              top: 20.0,
                              left: 0.0
                            ),
                            
                            child: TextField(
                                obscureText: true,
                                style: TextStyle(color:Colors.white),
                                
                                decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white, width: 2.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white, width: 2.0),
                                      
                                    ),
                                  labelText: 'Password',
                                  labelStyle: new TextStyle(color: Colors.white),
                                ),
                            ),
                          ),

                          Container(  
                            width: 300,
                            margin: EdgeInsets.only(
                              top: 20.0,
                              left: 0.0
                            ),
                            
                            child: RaisedButton(
                              onPressed: (){
                                LocalStorage storage = new LocalStorage('todo_app');
                                storage.setItem('logged_in',true);
                                
                                Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Dashboard()),
                                );
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)
                              ),
                              padding: EdgeInsets.all(0.0),
                              color:Color(0xFF036FF4),

                              child: Container(
                                constraints:
                                    BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
                                alignment: Alignment.center,
                                child: Text(
                                  "Iniciar Sesión",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.white, fontSize: 15),
                                ),
                              ),
                            ),
                            
                          ),

                        ],
                      ),
                  
                      ),
                  ),
                ],
               ),
            ),
            //Help Button
            Container(
              
              margin: EdgeInsets.only(
                top: 50
              ),
             
              width: 400,
              
              alignment: Alignment.topLeft,
              child: FloatingActionButton(
                child: Icon(Icons.help,size:50),
                backgroundColor: Color(0xFFFF5F04),
                foregroundColor: Colors.white,
                elevation: 100.0,
                onPressed: () {},
              ),  
            ),

             
          ],
        ),
          
        ),   
      ),
    );
  }
}