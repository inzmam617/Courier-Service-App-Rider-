import 'package:delivery_customer_side/API/All_APi.dart';
import 'package:delivery_customer_side/Withdraw/Withdraw.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Model/RiderWalletModel.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {

  int? Wbalance;
  void initState(){
    super.initState();
    ApiServiceForWallet.wallet().then((value) {
      if (value.balance != null) {
        print(value.balance);
        setState(() {
          Wbalance = value.balance;
        });
      }
      // else {
      //   showDialog(
      //     context: context,
      //     builder: (BuildContext context) =>
      //         CupertinoAlertDialog(
      //           title: const Text("Error"),
      //           content: Text("An Error Occurred") ,
      //           actions: <Widget>[
      //             CupertinoDialogAction(
      //               onPressed: () {
      //                 Navigator.pop(context);
      //               },
      //               child: const Text("Ok"),
      //             ),
      //           ],
      //         ),
      //   );
      // }
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 70,
        backgroundColor: const Color(0xff85DAE9),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(45)),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: SvgPicture.asset(
              "assets/Iconly-Light-outline-Arrow - Left.svg",
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
        title: const Text(
          "Wallet",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 25),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(32),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 3,
                      offset: Offset(1.0, 2.0),
                    )
                  ]),
              height: 150,
              width: MediaQuery.of(context).size.width / 1.1,
              child: Padding(
                padding: const EdgeInsets.only(right: 20, left: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Current Balance",
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                        Wbalance != null ?
                        Text(
                          Wbalance.toString() ?? "",
                          style: TextStyle(fontSize: 22, color: Colors.black),
                        ) : SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(),

                        ),
                      ],
                    ),
                    SvgPicture.asset("assets/Wallet.svg"),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 50),
            SizedBox(
              width: 180,
              child: ElevatedButton(
                  onPressed: () async {
                    final prefs = await SharedPreferences.getInstance();
                    print(prefs.getString("riderId"));
                    print(prefs.getString("token"));
                    print(Wbalance);

                    // print(object)
                    // Navigator.of(context).push(
                    //     MaterialPageRoute(builder: (BuildContext context) {
                    //   return const Withdraw();
                    // }));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff85DAE9),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32))),
                  child: const Text(
                    "Withdraw",
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  )),
            ),
            // StreamBuilder<RiderWalletModel>(
            //   stream: walletStream, // Your stream that emits a new value whenever the wallet balance changes
            //   builder: (context, snapshot) {
            //     if (snapshot.hasData && snapshot.data!.balance != null) {
            //       return Text('Wallet balance: ${snapshot.data!.balance}');
            //     } else if (snapshot.hasError) {
            //       return Text('An error occurred while fetching wallet balance');
            //     } else {
            //       return Text('Loading wallet balance...');
            //     }
            //   },
            // ),

          ],
        ),
      ),
    );
  }
}
