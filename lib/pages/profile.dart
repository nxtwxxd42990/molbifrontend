import 'package:flutter/material.dart';
import 'package:miniproject/models/index.dart';
import 'package:miniproject/services.dart';

class Profile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Profile();
  }
}

class _Profile extends State<Profile> {
  late Users users;
  //late Favorite favorites;
  late String title;
  String image = "";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    title = 'Loading products...';
    users = Users();

    Services.getUsers().then((usersFromServer) {
      setState(() {
        users = usersFromServer;
        // index = product.products.length;
        //list();
        // print("Hello Owrld");
        //print(users!.users[2].name);
        //title = widget.title;
      });
    });
  }

  Widget redBox() {
    return const Center(
      
      child: SizedBox(
        width: 400.0,
        height: 300.0,
        child: DecoratedBox(
          decoration: BoxDecoration(color: Colors.red),
        ),
      ),
    );
  }

  Widget buildImage() {
    return ClipOval(
      child: Material(
        child: Image.network(
          "https://sv1.picz.in.th/images/2023/11/05/ddvzpw8.png",
          width: 150,
          height: 150,
        ),
      ),
    );
  }

  //list
  Widget list() {
    return Expanded(
        child: ListView.builder(
      // ignore: unnecessary_null_comparison
      itemCount: users.users == null ? 0 : users.users.length,
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
            // Center(
            //   child: Image.network(favorites.favorites[index].productId.image,
            //       width: 400, height: 200),
            // ),
            Text("User Name: ${users.users[index].user}",
                style: const TextStyle(color: Colors.black, fontSize: 18)),
            Text("Description: ${users.users[index].description}",
                style: const TextStyle(color: Colors.black, fontSize: 18)),
            Text("Email: ${users.users[index].email}",
                style: const TextStyle(color: Colors.black, fontSize: 18)),
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
  Widget build(Object context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 68, 212, 190),
      appBar: AppBar(
        title: const Text('Profile Page'),
        backgroundColor: Colors.blue.shade800,
      ),
      body: Column(
        children: <Widget>[
          buildImage(),
          list(),
          redBox(),
        ],
      ),
    );
  }
}
