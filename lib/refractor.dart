import 'package:flutter/material.dart';

class Rfr extends StatelessWidget {
  final IconData? icon;
  final String? data;
  const Rfr({Key? key,required this.icon, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(onPressed: (){}, icon: Icon(icon)),
        Text(data!)

      ],

    );
  }
}
List name=["Scan any\n Qr code",
          "Pay contacts",
          " pay phone\n  number",
          "  Bank\n transfer",
            "Upi id",
           "Self transfer",
          "Pay bills",
           "   Mobile\n  recharge"];
List icons=[Icons.qr_code_2_rounded,
  Icons.contacts,
  Icons.phone_android,
   Icons.food_bank,
    Icons.perm_contact_calendar,
    Icons.supervisor_account_rounded,
    Icons.wallet,
    Icons.phone_android];
