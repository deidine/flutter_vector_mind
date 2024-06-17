import 'package:flutter/material.dart';

class AnimalCard extends StatelessWidget {
  const AnimalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return   Card(
    
      // margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(color: Colors.amber, width: 2),

      ),
 
      clipBehavior: Clip.antiAlias,
      elevation: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          Container(
            height: 100,
            width: 100,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            
            border: Border.all(  width: 2),
            ),
            child: Expanded(child: Image.asset("images/cp_profits.png", fit: BoxFit.fill)),
          ),
              Column(
                children: [
                  Container(
                    child: Text("Animal Name")),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("\$${10}"),
              Icon(Icons.shopping_cart,color: Colors.amber,),
            ]
          )
                ],
              ),

          
        ]
      )
    );
  }
}