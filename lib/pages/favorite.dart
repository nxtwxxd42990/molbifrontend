import 'package:flutter/material.dart';
import 'package:miniproject/models/index.dart';
import 'package:miniproject/services.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Login();
  }
}
class _Login extends State<Login> {
  late Favorites favorites;
  //late Favorite favorites;
  late String title;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    title = 'Loading products...';
    favorites = Favorites();

    Services.getFavorites().then((favoritesFromServer) {
      setState(() {
        favorites = favoritesFromServer;
        // index = product.products.length;
        //list();
        // print("Hello Owrld");
        // print(product.products[2].name);
        //title = widget.title;
      });
    });
  }

  Widget list() {
    return Expanded(
        child: ListView.builder(
      // ignore: unnecessary_null_comparison
      itemCount: favorites.favorites == null ? 0 : favorites.favorites.length,
      itemBuilder: (BuildContext context, int index) {
        // print("index=");
        // print(index);
        return row(index);
      },
    ));
  }

  Widget row(int index) {
    // print(product.products[index].name);
    // print(index);
    return Card(
      color: Color.fromARGB(255, 68, 212, 190),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Image(
            //     image: NetworkImage(
            //       '${products!.products[index].image}'
            //     ),

            //   ),
            Center(
              child: Image.network(favorites.favorites[index].productId.image,
              
                  width: 400, height: 200),
            ),
            Text("Name: ${favorites.favorites[index].productId.name}",
                style: const TextStyle(color: Colors.black, fontSize: 16)),
            Text("CPU: ${favorites.favorites[index].productId.cpu}",
                style: const TextStyle(color: Colors.black, fontSize: 16)),
            Text("Mainboard: ${favorites.favorites[index].productId.mb}",
                style: const TextStyle(color: Colors.black, fontSize: 16)),
            Text("VGA: ${favorites.favorites[index].productId.vga}",
                style: const TextStyle(color: Colors.black, fontSize: 16)),
            Text("RAM: ${favorites.favorites[index].productId.ram}",
                style: const TextStyle(color: Colors.black, fontSize: 16)),
            Text("SSD: ${favorites.favorites[index].productId.ssd}",
                style: const TextStyle(color: Colors.black, fontSize: 16)),
            Text("HDD: ${favorites.favorites[index].productId.hdd}",
                style: const TextStyle(color: Colors.black, fontSize: 16)),
            Text("PSU: ${favorites.favorites[index].productId.psu}",
                style: const TextStyle(color: Colors.black, fontSize: 16)),
            Text("CASES: ${favorites.favorites[index].productId.cases}",
                style: const TextStyle(color: Colors.black, fontSize: 16)),
            Text("PRICE: ${favorites.favorites[index].productId.price}",
                style: const TextStyle(color: Colors.black, fontSize: 16)),
            // ListTile(
            //   title: Text("${product.products[1].name}",
            //       style: const TextStyle(color: Colors.green, fontSize: 16)),
            //   subtitle: Text("Rate: ${product!.products[index].cpu}",
            //       style: const TextStyle(color: Colors.green, fontSize: 14)),
            //   trailing: const Icon(Icons.arrow_forward_ios),
            //   /*onTap: (){
            //     Navigator.of(context).push(MaterialPageRoute(
            //       builder: (context) => UserDetail(user: users!.users[index],),
            //     ));
            //   } ,*/
            // )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite Page'),
        backgroundColor: Colors.amber.shade800,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          list(),
        ],
      ),
    );
  }
}