import 'package:flutter/material.dart';
// import 'package:miniproject/models/favorite.dart';
import 'package:miniproject/models/products.dart';
import 'package:miniproject/services.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomepageState();
  }
}

class HomepageState extends State<Homepage> {
  late Products product;
  //late Favorite favorites;
  late String title;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    title = 'Loading products...';
    product = Products();

    Services.getProducts().then((productsFromServer) {
      setState(() {
        product = productsFromServer;
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
      itemCount: product.products == null ? 0 : product.products.length,
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
      color: Color.fromARGB(255, 212, 74, 74),
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
              child: Image.network(product.products[index].image,
                  width: 400, height: 200),
            ),
            Text("Name: ${product.products[index].name}",
                style: const TextStyle(color: Colors.black, fontSize: 20)),
            Text("CPU: ${product.products[index].cpu}",
                style: const TextStyle(color: Colors.black, fontSize: 20)),
            Text("Mainboard: ${product.products[index].mb}",
                style: const TextStyle(color: Colors.black, fontSize: 20)),
            Text("VGA: ${product.products[index].vga}",
                style: const TextStyle(color: Colors.black, fontSize: 20)),
            Text("RAM: ${product.products[index].ram}",
                style: const TextStyle(color: Colors.black, fontSize: 20)),
            Text("SSD: ${product.products[index].ssd}",
                style: const TextStyle(color: Colors.black, fontSize: 20)),
            Text("HDD: ${product.products[index].hdd}",
                style: const TextStyle(color: Colors.black, fontSize: 20)),
            Text("PSU: ${product.products[index].psu}",
                style: const TextStyle(color: Colors.black, fontSize: 20)),
            Text("CASES: ${product.products[index].cases}",
                style: const TextStyle(color: Colors.black, fontSize: 20)),
            Text("PRICE: ${product.products[index].price}",
                style: const TextStyle(color: Colors.black, fontSize: 20)),
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
        title: const Text('Home Page'),
        backgroundColor: Color.fromARGB(255, 68, 212, 190)  ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SearchBar(
            controller: SearchController(),
            hintText: 'Search',
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
          ),
          list(),
        ],
      ),
    );
  }
}
//  "image": "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBYVEhgWFhUYGBgaHBoaHBgYGBwYGhwZGBgdGRgYGBgcIy4lHB4rIRwaJjgmKy81NTU1GiQ7QDs0Py40NTEBDAwMEA8QGhISHzssISs3NTQxND80OjQ3NjQ0NjQ0MT82NDQ3PzE0NjQxNDQ0NjE/MTYxMTE0NDQxMTQ/MTQxNP/AABEIAOEA4QMBIgACEQEDEQH/",
//     "name": "asus",
//     "cpu": "i7 10000",
//     "mb": "asus",
//     "vga": "gtx 1000",
//     "ram": "16g",
//     "ssd": "500g",
//     "hdd": "500g",
//     "psu": "500w",
//     "cases": "cases",
//     "price": "1000"
