import 'package:c3_1/dashboard/Card.dart';
import 'package:c3_1/dashboard/Component.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget{
   
   final scaffoldKey = GlobalKey<ScaffoldState>();

   @override
   Widget build(BuildContext context) {
     return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
            leadingWidth: 20,
            title:Text(
                    "!Hola! El_Danker",
                    
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.white, fontSize: 25)
                ),
                
            actions: [
               
              Container(
                margin: EdgeInsets.only(
                    top: 0.0,
                    right: 20.0
                ),
                child:RaisedButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)
                        ),
                  padding: EdgeInsets.all(0.0),
                  color:Colors.blue,

                  child: Container(
                      constraints:
                        BoxConstraints(maxWidth: 100.0, minHeight: 50.0),
                            alignment: Alignment.center,
                            child: Text(
                                "Crear Clase",
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white, fontSize: 15),
                            ),
                  ),
              ),
             )
          
            ],

            leading: Column(
              children:[
              
              Container(
                child:IconButton(
                  icon: Icon(Icons.more_vert),
                  onPressed: (){
                      if(scaffoldKey.currentState!.isDrawerOpen){
                          
                          //close drawer, if drawer is open
                      }else{
                          scaffoldKey.currentState!.openDrawer();
                          //open drawer, if drawer is closed
                      }
                   
                  },
                
                ),
              ),
              
             ]
            )
              
          ),


        drawer:Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 130,
                child: DrawerHeader(
                    decoration: BoxDecoration(color: Colors.blue),
                    child: Text(
                      'ION',
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.white, fontSize: 60)
                    )
                )
              ),
             Expanded(
                child: ListView(
                  padding: EdgeInsets.zero, 
                  children: [
                    ListTile(
                    leading: Icon(Icons.account_circle), title: Text('Profile')),
                    ListTile(leading: Icon(Icons.settings), title: Text('Settings')),
                    ListTile(leading: Icon(Icons.close), title: Text('Cerrar Sesión')),
                  ]
                )
              )
            ]
          )
        ),
        body:Container(

          decoration: const BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment(0.0, 1.0), // 10% of the width, so there are ten blinds.
              colors: const <Color>[
                Color(0xff2e353d),
                Color(0xff2e353d),
              ], // red to yellow
              tileMode: TileMode.repeated, // repeats the gradient over the canvas
            ),
          ),
          child:SingleChildScrollView(
            child:Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: 30.0,
                      left: 0.0,
                      right:60.0
                  ),
                  child: Text(
                    "Actualización versión DE WARZONE",
                    
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize:22),
                    ),
                ),
                Container(
                    color: Colors.black,
                    padding: EdgeInsets.all(0.0),
                    width: 420,
                    margin: EdgeInsets.only(
                      top: 10.0,
                    ),
                    
                    
                    child: TextField(
                      onChanged: (value) {
                        
                      },
                      style: TextStyle(color:Colors.black),
                      
                      decoration: InputDecoration(
                          
                          filled: true,
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black, width: 0.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black, width: 0.0),
                                        
                          ),
                          labelText: 'Search',
                          
                          labelStyle: new TextStyle(color: Colors.black),
                        ),
                    ),
                  ),
                
                Container(
                   margin: EdgeInsets.only(
                      top: 20.0,           
                  )
                ),

                Container(
                  child: ComponentElements(),
                ),

                Container(
                  margin: EdgeInsets.only(
                      top: 20.0,           
                  ),
                  child: ComponentElements(),
                ),

                Container(
                  margin: EdgeInsets.only(
                      top: 20.0,
                  ),
                  width: 420,
                  
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CardElements(),
                          CardElements(),
                        ],
                      ),
                      Row(
                        children: [
                          CardElements(),
                          CardElements(),
                        ],
                      ),

                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              left: 100.0
                            ),
                            child:  CardElements(),
                          )
                        ],
                      ),
                     ],
                  )
                ),
                
                Container(
              
                  margin: EdgeInsets.only(
                    top: 50
                  ),
                
                  width: 400,
                  
                  alignment: Alignment.topLeft,
                  child: RaisedButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)
                      ),
                    padding: EdgeInsets.all(0.0),
                    color:Colors.orange[900],
                    child: Container(
                        constraints:
                          BoxConstraints(maxWidth: 80.0, minHeight: 50.0),
                          alignment: Alignment.center,
                          child: Icon(Icons.help,size:50),
                    ),
                  ),  
               ),


                Container(
                  margin: EdgeInsets.only(
                      top: 20.0,
                      
                  ),
                )
              ],
          ),
        ),
      )
      
     );
   }
}