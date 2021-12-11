import 'package:flutter/material.dart';
import'quote.dart';
void main() => runApp( MaterialApp(
 home :  basic()
));

class basic extends StatefulWidget {
  const basic({Key? key}) : super(key: key);

  @override
  _basicState createState() => _basicState();
}

class _basicState extends State<basic> {
   List <Quote> quotes =[
     Quote(author: 'oscar',text: 'Be yourself'),
     Quote(author: 'oscar',text: 'Be yourself'),
     Quote(author: 'oscar',text: 'Be yourself')

   ];
   Widget quoteTemplate(quote){
     return Card(
       margin: EdgeInsets.fromLTRB(16.0,16.0,16.0,0.0),
       child:Padding(
         padding:const EdgeInsets.all(12.0) ,
       child:  Column(
         crossAxisAlignment: CrossAxisAlignment.stretch,
         children: [
           Text(
               quote.text,
               style: TextStyle(
                 fontSize: 18.0,
                 color: Colors.grey[600],)
           ),
           Text(
             quote.author,
             style: TextStyle(
                 fontSize: 15.0,
                 color: Colors.grey[800]
             ),
           ),      
       SizedBox(height: 8.0),
        ElevatedButton.icon(onPressed: (){
          setState(() {
            quotes.remove(quote);
          });
        },


        label: Text('Delete'), icon: Icon(Icons.delete),
        )



         ],
     ),

       ),

     );




   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Quotes',style: TextStyle(
          fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,

      ),
      body: Column(
       children: quotes.map( (quote) => quoteTemplate(quote)).toList(),


    )
    );
  }

}
