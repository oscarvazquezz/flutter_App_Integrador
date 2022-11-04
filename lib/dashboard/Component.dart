import 'package:flutter/material.dart';

class ComponentElements extends StatelessWidget{
  
    @override
    Widget build(BuildContext context) {
      return Container(

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

          child:Column(
            children: [
              
                Container(
                  
                  height:300,
                  width: 420,

                  child:Column(
                  children: [
                    Container(
                     
                      height:300,
                      width: 420,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          shape: BoxShape.rectangle,
                          boxShadow: <BoxShadow>[
                            BoxShadow (
                              color: Colors.blueGrey,
                            )
                          ]
                      ),
                      child: Column(
                        children: [
                          Container(
                            child:Row(
                              children:[
                                Container(
                                  margin: EdgeInsets.only(
                                    top: 10.0,
                                    left: 10.0,
                                    right:0.0
                                ),
                                  child:Icon(Icons.arrow_upward_outlined,color:Colors.orange,size:30),
                                ),
                                Container(
                                  
                                  width: 220,
                                  margin: EdgeInsets.only(
                                    top: 10.0,
                                    left: 160.0,
                                    right:0.0
                                  ),
                                  child:Text(
                                    "Mejor TTK Y RECOIL ",
                                    style: TextStyle(color: Colors.white, fontSize: 20),
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.ellipsis,
                                  )
                                )
                              ]
                            )
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 20.0,
                              left: 0.0,
                              right:0.0
                            ),
                            child: Image(
                              image: NetworkImage('https://cdn.ligadosgames.com/imagens/m4a1111.jpg'),
                              height: 200,
                              width: 400,
                            ),
                          ),
                          Container(
                            child:Row(
                              children:[
                                Container(
                                  margin: EdgeInsets.only(
                                    top: 10.0,
                                    left: 10.0,
                                    right:0.0
                                ),
                                  child:Text(
                                    "#1",
                                    style: TextStyle(color: Colors.red, fontSize: 20),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Container(
                                  
                                  width: 120,
                                  margin: EdgeInsets.only(
                                    top: 10.0,
                                    left:265.0,
                                    right:0.0
                                  ),
                                  alignment: new FractionalOffset(0.8, 0.0),
                                  child:Text(
                                    "CW",
                                    style: TextStyle(color: Colors.white, fontSize: 20),
                                    textAlign: TextAlign.center,
                                    overflow: TextOverflow.ellipsis,
                                  )
                                ),
                              ],)
                          ),
                          
                        ],
                        
                      ),
                    ),
                    
                  ],
                )
                ),Padding(
                  padding: const EdgeInsets.all(0.0),
                  child:Container(
                    height: 46,
                    width: 320,
                    
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                      shape: BoxShape.rectangle,
                      boxShadow: <BoxShadow>[
                        BoxShadow (
                          color: Colors.blue,
                        )
                      ]
                    ),
                    alignment: new FractionalOffset(0.5, 0.5),
                    child:Text(
                      "ABRIR MEJOR CLASES",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
              ),
              
              Container(

              )

            ],
          ),
        );

    }
}