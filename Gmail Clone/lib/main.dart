import 'package:flutter/material.dart';
import 'Compose.dart';
import 'Read.dart';
class Email{
 static List details = [
 {
   "color": 0xFFabcabc,
   "sender": "Zmazon India",
   "subject": "Product in the wishlist is not available We are sorry !!!",
   "content":"pailable in the app with a discount of INR 5000 using HDFC Credit card/Debit card",
   "time" : "10:00 AM",
   "star": false
 },
 {
   "color": 0xFFaaabbb,
   "sender": "Bmazon India",
   "subject": "Product in the wishlist is availabe",
   "content":"pailable in the app with a discount of INR 5000 using HDFC Credit card/Debit card",
   "time" : "10:00 AM",
   "star": false 
 }, {
   "color": 0xFFdddbbb,
   "sender": "Cmazon India",
   "subject": "Product in the wishlist is availabe",
   "content":"pailable in the app with a discount of INR 5000 using HDFC Credit card/Debit card",
   "time" : "10:00 AM",
   "star": false

 },
 {
   "color": 0xFFaaaeee,
   "sender": "Dmazon India",
   "subject": "Product in the wishlist is availabe",
   "content":"pailable in the app with a discount of INR 5000 using HDFC Credit card/Debit card",
   "time" : "10:00 AM",
      "star": false

 },{
   "color": 0xFFcccbbb,
   "sender": "Emazon India",
   "subject": "Product in the wishlist is availabe",
   "content":"pailable in the app with a discount of INR 5000 using HDFC Credit card/Debit card",
   "time" : "10:00 AM"
  ,"star": false
 },{
   "color": 0xFFaaafff,
   "sender": "Fmazon India",
   "subject": "Product in the wishlist is availabe",
   "content":"pailable in the app with a discount of INR 5000 using HDFC Credit card/Debit card",
   "time" : "10:00 AM",
   "star": false
 },{
   "color": 0xFFaaabbb,
   "sender": "Gmazon India",
   "subject": "Product in the wishlist is availabe",
   "content":"pailable in the app with a discount of INR 5000 using HDFC Credit card/Debit card",
   "time" : "10:00 AM",
   "star": false
 },
 {
   "color": 0xFFaaabbb,
   "sender": "Amazon India",
   "subject": "Product in the wishlist is availabe",
   "content":"pailable in the app with a discount of INR 5000 using HDFC Credit card/Debit card",
   "time" : "10:00 am",
   "star": false
 },

 {
   "color": 0xFFaaabbb,
   "sender": "Amazon India",
   "subject": "Product in the wishlist is availabe",
   "content":"pailable in the app with a discount of INR 5000 using HDFC Credit card/Debit card",
   "time" : "10:00 AM",
   "star": false
 },

 {
   "color": 0xFFaaabbb,
   "sender": "Amazon India",
   "subject": "Product in the wishlist is availabe",
   "content":"pailable in the app with a discount of INR 5000 using HDFC Credit card/Debit card",
   "time" : "10:00 AM",
   "star": false
 },

 {
   "color": 0xFFaaabbb,
   "sender": "Amazon India",
   "subject": "Product in the wishlist is availabe",
   "content":"pailable in the app with a discount of INR 5000 using HDFC Credit card/Debit card",
   "time" : "10:00 AM",
   "star": false
 }

];
}
void main() {
  runApp(MaterialApp(
    title: 'Gmail Home',
    home: Gmail(),
  ));
}



class Gmail extends StatefulWidget {
  @override
  GmailState createState() => GmailState();
}


class GmailState extends State<Gmail> {

  @override
  
  Widget build(BuildContext context) {print("Running.....");
    // Scaffold is a layout for the major Material Components.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: 
         Icon(Icons.menu, color: Colors.white),
        title: Padding( padding: EdgeInsets.only(left:14), child:Text('Unread')),
        titleSpacing: 0,
        centerTitle: false,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            tooltip: 'Search',
            onPressed: null,
  ),
        ],
      ),



body : ListView.builder(
        itemCount: Email.details.length ,
        itemBuilder: (BuildContext context ,int index){
          return 
              GestureDetector(
                onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=>Read(index:index)));
                        },
 child: Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                    child: Row( 
                       children: <Widget>[
                     Container(
                       height: 50,
                       width: 50,
                       decoration: BoxDecoration(
                         color: Color(Email.details[index]['color']),
                         shape: BoxShape.circle,
                       ),
                       child: Center(
                       child: Text( Email.details[index]['sender'][0],style: TextStyle(color: Colors.white,fontSize: 30,)),)
                     ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only( top: 10, left:10),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    
                                     Text(
                                      Email.details[index]['sender'],
                                      overflow:TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 17.0),
                                    ),
                                    Text(
                                      Email.details[index]['time'],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.blueAccent,
                                          fontSize: 13.5,
                                          ),
                                    ),
                                  ],
                                ),
                                Row(



                              
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                   Expanded(
                                     
                                     child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          Email.details[index]['subject'],
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black,
                                              fontSize: 15),
                                        ),
                                       Text(
                                        Email.details[index]['content'],
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black,
                                            fontSize: 15.5),
                                        )
                                      ],
                                    )
                                    ),
                                  IconButton(onPressed: () {
      
                                     setState(() {  if(Email.details[index]['star'] == true)
                                    Email.details[index]['star'] = false;
                                    else  
                                    Email.details[index]['star'] = true;  
                                     });
                                     },
                                   icon:(Email.details[index]['star']) ? Icon(Icons.star,color: Color(0xFFf3ce13),) : Icon(Icons.star_border,color:Colors.grey),
                                   padding: EdgeInsets.only(top:5,bottom:3),

                                 alignment:Alignment.bottomRight,
                                  ),
                                  Divider(color: Colors.grey,)
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
              );
              },
      ),
    
           floatingActionButton: FloatingActionButton( onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (BuildContext context)=>Compose()));},
            backgroundColor: Colors.red,
            child: Icon(Icons.edit),
          ) );
      }
     }
    
