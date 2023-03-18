import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../constant/app_text_style.dart';
import '../constant/color_constant.dart';
import '../data/card_data.dart';
import '../data/transaction.dart';
import '../widgets/my_card.dart';
import '../widgets/transaction_card.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key,}) : super(key: key);


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   // title: Text(widget.title),
      //   leading:     Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             Text('Welcome back!'),
      //             Text(
      //               'Marcus Thomas',
      //               style: TextStyle(
      //                   fontSize: 20,
      //                   fontWeight: FontWeight.w800,
      //                   color: Colors.lightBlue),
      //             ),
      //           ],
      //   ),
      //   actions: [
      //         Container(
      //           width: 50,
      //           height: 50,
      //           padding: EdgeInsets.all(5),
      //           decoration: BoxDecoration(
      //             borderRadius: BorderRadius.circular(50),
      //             color: Colors.white,
      //           ),
      //           child: CircleAvatar(
      //             radius: 30.0,
      //             backgroundColor: Colors.grey,
      //             backgroundImage: NetworkImage(
      //               'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
      //             ),
      //           ),
      //         )
      //   ],
        
          
 
      // ),
      

       appBar: AppBar(
        centerTitle: true,
        title: Text(
          "My Bank",
          style: TextStyle(
            fontFamily: "Poppins",
            color: kPrimaryColor,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage:
                NetworkImage("https://placeimg.com/640/480/people"),
          ),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.notifications_active_outlined,
                color: Colors.black,
                size: 27,
              ),
              onPressed: () {})
        ],
      ),
      
      
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
             padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 15),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // SizedBox(height: 20,) ,
              
              Container(
                  height: 200,
                  child: ListView.separated(
                      physics: ClampingScrollPhysics(),
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          width: 10,
                        );
                      },
                      itemCount: myCards.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return MyCard(
                          card: myCards[index],
                        );
                      }),
                ),
                  SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Recent Transactions",
                      style: ApptextStyle.BODY_TEXT,
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                 ListView.separated(
                      itemCount: myTransactions.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: 10,
                        );
                      },
                      itemBuilder: (context, index) {
                        return TransactionCard(transaction: myTransactions[index]);
                      })
              
              ],
            ),
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
