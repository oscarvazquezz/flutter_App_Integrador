import 'package:flutter/material.dart';

class CardElements extends StatelessWidget{

  final String text ;
  CardElements(this.text);
   
   @override
   Widget build(BuildContext context) {
     return Container(
      child:Cards(this.text)
     );
   }
}

class Cards extends StatelessWidget{
  final String text ;
  Cards(this.text);
  @override
  Widget build(BuildContext context) {
    return Row(
            children:[
                Container(
                  margin: EdgeInsets.only(
                    top: 10.0,
                    left: 5.0
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    shape: BoxShape.rectangle,
                    boxShadow: <BoxShadow>[
                    BoxShadow (
                        color: Color(0xFF1F2529),
                      )
                    ]
                  ),
                  height: 80,
                  width: 200,

                  child:Row(
                    children: [
                      Row(
                          children: [
                            Container(
                                width: 180,
                                  height: 80,
                                  alignment: new FractionalOffset(0.5, 0.5),
                                  child: Text(
                                      this.text,
                                      style: TextStyle(color: Colors.white, fontSize: 17),
                                      textAlign: TextAlign.center,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                            ),
                            Container(
                                margin: EdgeInsets.only(
                                  right: 0.0,
                                  left: 0.0,
                                ),
                                width: 20,
                                height: 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                    shape: BoxShape.rectangle,
                                    boxShadow: <BoxShadow>[
                                      BoxShadow (
                                        color: Color(0xFF036FF4),
                                      )
                                    ]
                              ),
                            )
                          ],
                      )
                    ]
                  )
            ),
          ]
      );
  }
}