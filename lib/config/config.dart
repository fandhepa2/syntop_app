import 'package:intl/intl.dart';

class Config {
  // Sediakan Varial Penampung Untuk URL
  // static String urlApi = "http://192.168.122.67:8000/api";
  // static String urlMain = "http://192.168.122.67:8000/";
  static String urlApi = "http://syntop.airportslab.com/api";
  static String urlMain = "http://syntop.airportslab.com/";

  // URL POINT YANG AKAN DI PAKAI

  String urlProdrekomen = "$urlApi/product-rekomendasi";
  String urlProdAll = "$urlApi/product-list";
  String urlProdNew = "$urlApi/product-new";
  String urlProdSearch = "$urlApi/product-sarch?keyword";
  String urlKeranjangPost = "$urlApi/keranjang-post";
  String urlKeranjangList = "$urlApi/keranjang-list?user_id=";
  String urlKeranjangDelete = "$urlApi/product-delete";
  String urlCheckoutPost = "$urlApi/checkout-post";
  String urlUploadBuktiBayar = "$urlApi/upload-bukti-bayar";
  String urlRegister = "$urlApi/register";
  String urlLogin = "$urlApi/login";
  String urlLogout = "$urlApi/logout";
  String urlCheckoutListBaru = "$urlApi/checkout-list-baru?user_id=";
  String urlCheckoutListProses = "$urlApi/checkout-list-proses?user_id=";
  String urlCheckoutListSelesai = "$urlApi/checkout-list-selesai?user_id=";

  // Membuat Fungsi Untuk Format Currency
  static String convertToIdr(dynamic number, int decimalDigit) {
    NumberFormat currencyFormatter = NumberFormat.currency(
      locale: 'id',
      symbol: 'Rp. ',
      decimalDigits: decimalDigit,
    );
    return currencyFormatter.format(number);
  }
}
