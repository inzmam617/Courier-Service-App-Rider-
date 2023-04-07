import 'package:delivery_customer_side/API/All_APi.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Model/TransactionModel.dart';

class Transactions extends StatefulWidget {
  const Transactions({Key? key}) : super(key: key);

  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {

  void initState(){
    super.initState();
    ApiServiceForTransaction.transactionHistory().then((value) {
      if (value.transactions != null) {
        print(value.transactions);
        print(value.transactions!.length);
      }
      else {
        showDialog(
          context: context,
          builder: (BuildContext context) =>
              CupertinoAlertDialog(
                title: const Text("Error"),
                content: Text("An Error Occurred") ,
                actions: <Widget>[
                  CupertinoDialogAction(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Ok"),
                  ),
                ],
              ),
        );
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: SvgPicture.asset(
            "assets/Map Icon.svg",
            fit: BoxFit.scaleDown,
          ),
        ),
        title: const Text(
          "Transactions",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            // const SizedBox(height: 25),
            // Container(
            //   decoration: BoxDecoration(
            //       color: Colors.white,
            //       borderRadius: BorderRadius.circular(40),
            //       boxShadow: const [
            //         BoxShadow(
            //           color: Colors.grey,
            //           blurRadius: 3,
            //           offset: Offset(1.0, 2.0),
            //         )
            //       ]),
            //   height: 80,
            //   width: MediaQuery.of(context).size.width / 1.1,
            //   child: Padding(
            //     padding: const EdgeInsets.only(left: 15, right: 25),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         Row(
            //           children: [
            //             Container(
            //               decoration: BoxDecoration(
            //                   image: const DecorationImage(
            //                       fit: BoxFit.cover,
            //                       image: AssetImage("assets/pic.png.jpg")),
            //                   borderRadius: BorderRadius.circular(100),
            //                   boxShadow: const [
            //                     BoxShadow(
            //                       color: Colors.grey,
            //                       blurRadius: 1,
            //                       offset: Offset(1.0, 2.0),
            //                     )
            //                   ]),
            //               height: 35,
            //               width: 35,
            //             ),
            //             const SizedBox(width: 15),
            //             Column(
            //               mainAxisAlignment: MainAxisAlignment.center,
            //               crossAxisAlignment: CrossAxisAlignment.start,
            //               children: const [
            //                 Text(
            //                   "Inzmam Malik",
            //                   style: TextStyle(
            //                       fontSize: 14, color: Colors.black),
            //                 ),
            //                 SizedBox(height: 5),
            //                 Text(
            //                   "Sep20,22",
            //                   style: TextStyle(
            //                       fontSize: 10, color: Color(0xffCAC2C2)),
            //                 )
            //               ],
            //             ),
            //           ],
            //         ),
            //         const Text(
            //           "256\$",
            //           style:
            //               TextStyle(fontSize: 22, color: Color(0xffFD9F00)),
            //         )
            //       ],
            //     ),
            //   ),
            // ),

        Expanded(
          child: SizedBox(

            child: StreamBuilder<TransactionModel>(
              stream: Stream.fromFuture( ApiServiceForTransaction.transactionHistory()),
              builder: (BuildContext context, AsyncSnapshot<TransactionModel> snapshot) {
                if (snapshot.hasData && snapshot.data!.transactions != null) {
                  return ListView.builder(
                    // shrinkWrap: true,
                    itemCount: snapshot.data!.transactions!.length,
                    itemBuilder: (BuildContext context, int index) {
                      final transaction = snapshot.data!.transactions![index];
                      return  Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(40),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 3,
                                  offset: Offset(1.0, 2.0),
                                )
                              ]),
                          height: 80,
                          width: MediaQuery.of(context).size.width / 1.1,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15, right: 25),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          image: const DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage("assets/pic.png.jpg")),
                                          borderRadius: BorderRadius.circular(100),
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 1,
                                              offset: Offset(1.0, 2.0),
                                            )
                                          ]),
                                      height: 35,
                                      width: 35,
                                    ),
                                    const SizedBox(width: 15),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children:  [
                                        Text(
                                          "Inzmam Malik",
                                          style: TextStyle(
                                              fontSize: 14, color: Colors.black),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          "${transaction.createdAt}",
                                          style: TextStyle(
                                              fontSize: 10, color: Color(0xffCAC2C2)),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                Text(
                                  "${transaction.amount}",
                                  style:
                                  TextStyle(fontSize: 22, color: Color(0xffFD9F00)),
                                )
                              ],
                            ),
                          ),
                        ),
                      );

                      //   ListTile(
                      //   title: Text("Transaction ID: ${transaction.id}"),
                      //   subtitle: Text("Amount: ${transaction.amount}"),
                      // );
                    },
                  );
                } else if (snapshot.hasError) {
                  return Text("An error occurred: ${snapshot.error}");
                } else {
                  return Center(child: SizedBox(
                    height: 100,
                      width: 100,
                      child: CircularProgressIndicator(color: Colors.black,)));
                }
              },
            ),
          ),
        )

        ],
        ),
      ),
    );
  }
}
