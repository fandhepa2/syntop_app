// untuk membantu merequest https
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:syntop_app/config/config.dart';
import 'package:syntop_app/models/product_model.dart';

class ProductServices {
  // function untuk merequest product-New
  static Future<List<ProductModel>> getProductNew() async {
    //  siapkan variabel untuk menyimban list product
    List<ProductModel> listProductNew = [];

    try {
      // buat variabel untuk merequest web service
      var response = await http.get(Uri.parse(Config().urlProdNew));

      // jika hasil output pada request status codenya adalah 200
      if (response.statusCode == 200) {
        // maka ambil isi body output json dan decode jsonnya
        var resposeBody = json.decode(response.body);
        // print(resposeBody);
        // buat variabel untuk menampilkan data dariresponse body yang ingin di ambil isinya
        List listProductNewResponse = resposeBody['data'];
        // isikan variabel listProductNew di atas yang tadinya  [] dengan isi dari variabel

        // listproductNew yang sudah menerima response dari web service
        listProductNewResponse.forEach((data) {
          listProductNew.add(ProductModel.fromJson(data));
        });
      } else {
        listProductNew = [];
      }
    } catch (e) {
      print(e);
    }

    return listProductNew;
  }

  // function untuk merequest product-New
  static Future<List<ProductModel>> getProductRecomdended() async {
    //  siapkan variabel untuk menyimban list product
    List<ProductModel> listProductRecomdended = [];

    try {
      // buat variabel untuk merequest web service
      var response = await http.get(Uri.parse(Config().urlProdrekomen));

      // jika hasil output pada request status codenya adalah 200
      if (response.statusCode == 200) {
        // maka ambil isi body output json dan decode jsonnya
        var resposeBody = json.decode(response.body);
        print(resposeBody);
        // buat variabel untuk menampilkan data dariresponse body yang ingin di ambil isinya
        List listProductRecomendedResponse = resposeBody['data'];
        // isikan variabel listProductNew di atas yang tadinya  [] dengan isi dari variabel

        // listproductNew yang sudah menerima response dari web service
        listProductRecomendedResponse.forEach((data) {
          listProductRecomdended.add(ProductModel.fromJson(data));
        });
      } else {
        listProductRecomdended = [];
      }
    } catch (e) {
      print(e);
    }

    return listProductRecomdended;
  }
}
