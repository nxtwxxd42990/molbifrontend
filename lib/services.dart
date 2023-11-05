import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:miniproject/models/index.dart';
import 'package:miniproject/models/users.dart';
import 'models/product.dart';
import 'models/products.dart';
import 'models/user.dart';

class Services{
  static const String urlU = "http://10.0.2.2:8080/api/users";
  static const String urlP = "http://10.0.2.2:8080/api/products";
  static const String urlC = "http://10.0.2.2:8080/api/favorite";
  static Future<Users> getUsers() async{
    try{
      final responnse = await http.get(Uri.parse(urlU));
      // print(responnse);
      // print(responnse.statusCode);
      if(200 == responnse.statusCode){

        return parseUsers(responnse.body);
      }
      else{
        return Users();
      }
    }
    catch(e){
      print("Error ${e.toString()}");
      return Users();

    }
  }

  static Users parseUsers(String responnseBody){
    final parsed = json.decode(responnseBody).cast<Map<String, dynamic>>();
    List<User> users = parsed.map<User>((json) => User.fromJson(json)).toList();
    Users u = Users();
    
    u.users = users;
    print(u);
    return u;
  }
  ////////////////////////////////////////////////////////////////////
  static Future<Products> getProducts() async{
    try{
      final responnse = await http.get(Uri.parse(urlP));
      if(200 == responnse.statusCode){
        //print(p);
        return parseProducts(responnse.body);
      }
      else{
        return Products();
      }
    }
    catch(e){
      print("Error ${e.toString()}");
      return Products();

    }
  }

  static Products parseProducts(String responnseBody){
    final parsed = json.decode(responnseBody).cast<Map<String, dynamic>>();
    List<Product> products = parsed.map<Product>((json) => Product.fromJson(json)).toList();
    Products p = Products();
    //print("dfgdfgdf");
    p.products = products;
    //print(p);
    return p;
  }
  //////////////////////////////////////////////////////////////////////////
  static Future<Favorites> getFavorites() async{
    try{
      final responnse = await http.get(Uri.parse(urlC));
      if(200 == responnse.statusCode){
        return parseFavorites(responnse.body);
      }
      else{
        return Favorites();
      }
    }
    catch(e){
      print("Error ${e.toString()}");
      return Favorites();
    }
  }

  static Favorites parseFavorites(String responnseBody){
    final parsed = json.decode(responnseBody).cast<Map<String, dynamic>>();
    List<Favorite> favorites = parsed.map<Favorite>((json) => Favorite.fromJson(json)).toList();
    Favorites f = Favorites();
  
    f.favorites = favorites;
    return f;
  }
}