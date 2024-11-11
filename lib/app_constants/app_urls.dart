const String baseUrl = "https://fakestoreapi.com";

class AppUrls {
  static const String allProducts = "$baseUrl/products";
  static const String singleProduct = "$allProducts/";
  // static const String productCategories = "$allProducts/categories";
  // static const String limitedResults = "$allProducts?limit=6";
  static const String electronicsProducts = "$allProducts/category/electronics";
  static const String jeweleryProducts = "$allProducts/category/jewelery";
  static const String mensClothingProducts =
      "$allProducts/category/men's%20clothing";
  static const String womensClothingProducts =
      "$allProducts/category/women's%20clothing";
}
