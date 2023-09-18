import 'package:flutter/material.dart';
import 'package:wallet/wallet.dart';
void main(){
  runApp(Wallet());
}

class Wallet extends StatelessWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Googlepay(),

    );
  }
}
