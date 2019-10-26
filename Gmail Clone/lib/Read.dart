import 'package:flutter/material.dart';
import 'main.dart';

var assetsImage = AssetImage('assets/screen.jpg');
var image = Image(image:assetsImage,fit: BoxFit.fill);

class Read extends StatefulWidget {
  @override
  ReadState createState() => ReadState();
  final index;
  Read({this.index});
}

class ReadState extends State<Read> { 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Colors.red,
         actions: <Widget>[
          IconButton(
            icon: Icon(Icons.archive, color: Colors.white),
            tooltip: 'Attachment',
            onPressed: (){},
  ),IconButton(
            icon: Icon(Icons.delete, color: Colors.white),
            tooltip: 'Send',
            onPressed: null,
  ),IconButton(
            icon: Icon(Icons.mail, color: Colors.white),
            tooltip: 'More',
            onPressed: null,
  ),
  IconButton(
            icon: Icon(Icons.more_vert, color: Colors.white),
            tooltip: 'More',
            onPressed: null,
  ),
      ]
      ),


    body: Padding(padding: EdgeInsets.only(left:15 , right: 15 , top: 20, bottom:10),
          child: Column(
            children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(Email.details[widget.index]['subject'], style: TextStyle(fontSize: 25),) 
                  ,)
                  ,
                    IconButton(onPressed: () {setState(() {  if(Email.details[widget.index]['star'] == true)
                                    Email.details[widget.index]['star'] = false;
                                    else  
                                    Email.details[widget.index]['star'] = true;  
                                     });},
                                icon:(Email.details[widget.index]['star']) ? Icon(Icons.star,color: Color(0xFFf3ce13),) : Icon(Icons.star_border,color:Colors.grey),
                                iconSize: 30, 
                                alignment:Alignment.bottomRight,
                              padding: EdgeInsets.only(top:35),
                                  )],
            ),

            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top:5),
                  child: Container(
                    width: 50,
                    height: 20,
                    color: Colors.grey[200],
                    child:Text("Inbox",style: TextStyle(fontSize: 12.0),textAlign: TextAlign.center,)

                  ),
                ),
            ],
             ),
             Divider(color: Colors.grey),
             
       Padding(
         padding: const EdgeInsets.only(top:15.0),
         child: Row(
           children: <Widget>[
                 Container(
                         height: 50,
                         width: 50,
                         decoration: BoxDecoration(
                           color: Color(Email.details[widget.index]['color']),
                           shape: BoxShape.circle,
                         ),
                         child: Center(
                         child: Text( Email.details[widget.index]['sender'][0],style: TextStyle(color: Colors.white,fontSize: 30,)),)
                       ),

                        Expanded(
                          child:
                            Padding(
                              padding: const EdgeInsets.only(left:8.0),
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start ,children: <Widget>[
                               Text(Email.details[widget.index]['sender'],style: TextStyle(fontSize: 16),),
                               Text("to me" ,style:TextStyle(color: Colors.grey[600])),
                                RichText(
  text: TextSpan(
    children: <TextSpan>[
      TextSpan(text: Email.details[widget.index]['time'],style: TextStyle(color: Colors.grey[600])),
      TextSpan(text: '    View Details',style: TextStyle(color: Colors.blue)),
    ],
  ),
)                 ],),
                            )
                        ),
                        IconButton(icon:Icon(Icons.reply),onPressed: (){},color: Colors.grey[600],),
                        IconButton(icon:Icon(Icons.more_vert),onPressed: (){},color: Colors.grey[600],


                        )
                        ],
         ),
       ) ,
       Padding(
         padding: const EdgeInsets.only(top:8.0),
         child: Container
         (child: image,),
       )   

    
],
 ),
 ),
 );
  }
  }

