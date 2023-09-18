import 'package:flutter/material.dart';
import 'package:wallet/ref%202.dart';
import 'package:wallet/refractor.dart';

class Googlepay extends StatelessWidget {
  const Googlepay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 800,
              height: 200,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      spreadRadius: 2,
                    )
                  ],
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          "https://thumbs.dreamstime.com/b/seamless-cartoon-city-background-vector-illustration-separate-layers-92796292.jpghttps://thumbs.dreamstime.com/b/seamless-cartoon-city-background-vector-illustration-separate-layers-92796292.jpg"))),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(boxShadow: []),
                      margin: EdgeInsets.only(top: 30),
                      height: 40,
                      width: 400,
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: "pay freinds & merchent",
                            prefixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 0.8),
                      child: SizedBox(
                          height: 100,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://imgd.aeplcdn.com/1280x720/n/cw/ec/49739/himalayan-right-side-view.jpeg"),
                          )),
                    )
                  ]),
            ),
            GridView.builder(
              shrinkWrap: true,
              itemCount: 8,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 50,
                mainAxisSpacing: 5,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Rfr(icon: icons[index], data: name[index]);
              },
            ),
            OutlinedButton(
                style: ButtonStyle(),
                onPressed: () {},
                child: Text("UPI ID:ziyadziyu114@oksbi")),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "people",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
            GridView.builder(
              itemCount: images.length,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Rfcr2(
                  image: images[index],
                  name: contacts[index],
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Bussinesses",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                      ElevatedButton(onPressed: () {}, child: Text("Explore")),
                ),
              ],
            ),
            //Busniess code
            GridView.builder(
              itemCount: 8,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Rfcr2(
                    image: billimages[index],
                    name: bill[index],
                  ),
                );
              },
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Bills & More",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 50,
                  mainAxisSpacing: 5,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Rfr(icon: icon2[index], data: bills[index]);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "see all",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Promotions",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                itemCount: 4,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Rfcr2(
                    image: images1[index],
                    name: promotions[index],
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                onTap: (){},
                leading: Icon(Icons.speed),
                title: Text("check your CIBIl score for free  >",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              ),
            ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: (){},
            leading: Icon(Icons.av_timer_outlined),
            title: Text("Show transaction history  >",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: (){},
            leading: Icon(Icons.food_bank),
            title: Text("Check bank balance  >",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),),
        ),
          ],

        ),
      ),
    );
  }
}
