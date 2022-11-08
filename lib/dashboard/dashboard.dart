import 'package:c3_1/Login/Login.dart';
import 'package:c3_1/dashboard/Card.dart';
import 'package:c3_1/dashboard/Component.dart';
import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';

class Dashboard extends StatelessWidget{
   
  final scaffoldKey = GlobalKey<ScaffoldState>();
  var logged_in;
  var mensajeBienvenido;
  var iconProfile = null;
  var profile = "";
  List<Map> objst = [{"image":"https://cdn.ligadosgames.com/imagens/m4a1111.jpg","text":"Mejor TTK Y RECOIL","CW":"MAN","NumeroPosicion":"1"},
                     {"image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDeagdsrkdrwTyfxZt9crjyVTAM4fkQe_ZTs8Q0a95bepWBI285tt_AC5yEXcs0A_cO3I&usqp=CAU","text":"Mejor DPS","CW":"CW","NumeroPosicion":"2"}];
  
  dynamic _texto ;

   @override
   Widget build(BuildContext context) {
     
     LocalStorage storage = new LocalStorage('todo_app');
     
     final logged = storage.getItem('logged_in');
     print("d $logged");
     if (logged == null){
       logged_in = false;
       _texto = "Log in";
       mensajeBienvenido = "";
     }else if (logged == true){
       logged_in = true;
       _texto = "Cerrar sesión";
       mensajeBienvenido = "!Hola! El_Danker";
       profile = "Profile";
       iconProfile = Icons.account_circle;
     }else{
       logged_in = false;
       _texto = "Log in";
       mensajeBienvenido = "";
     }
    
     return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
            leadingWidth: 20,
            elevation: 0,
            bottomOpacity: 0.0,
            backgroundColor:Color(0xff2e353d),
            title:Text(
                    mensajeBienvenido,
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
                  onPressed: () {
                    print(logged_in);
                  },
                  shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)
                        ),
                  padding: EdgeInsets.all(0.0),
                  color:Color(0xFF036FF4),

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
          
          child: Container(
          color: Colors.black,
          width: double.infinity,
          height: double.infinity,

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
                    leading: Icon(iconProfile), title: Text(profile)),
                    
                    ListTile(
                      leading: Icon(Icons.login), title: Text('$_texto'),
                      onTap: ()async{
                        print(_texto);
                        if (logged_in == false){
                          storage.setItem('logged_in',false);
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        }else{
                          storage.setItem('logged_in',false);
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Dashboard()),
                          );
                        }
                      },                       
                   ),   
                  ]
                )
              )
            ]
            ),
          )
        ),

        body:SizedBox.expand(
          child:Container(

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
                          fillColor: Color(0xFFDDDEE4),
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
                  child: Column(
                    children: objst.map(
                      (i) => 
                        Container(
                          margin: EdgeInsets.only(
                              top: 20.0,           
                          ),
                         
                          child: ComponentElements(i["image"],i["text"],i["CW"],i["NumeroPosicion"]),
                        )
                       
                    ).toList(),
                  ),
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
                          CardElements("SUBFUSIBLES"),
                          CardElements("RIFLES DE ASALTO"),
                        ],
                      ),
                      Row(
                        children: [
                          CardElements("ESCOPETA"),
                          CardElements("FRANCOTIRADORES"),
                        ],
                      ),

                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              left: 100.0
                            ),
                            child:  CardElements("PISTOLAS Y OTROS"),
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
                    color:Color(0xFFFF5F04),
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
       ), 
      ),
      
     );
   }
}