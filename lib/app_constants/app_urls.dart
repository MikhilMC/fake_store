class AppUrls {
  static const String _baseUrl = "https://fakestoreapi.com";
  static const String _allProducts = "$_baseUrl/products";
  static const String _singleProduct = "$_allProducts/";
  static const String _electronicsProducts =
      "$_allProducts/category/electronics";
  static const String _jeweleryProducts = "$_allProducts/category/jewelery";
  static const String _mensClothingProducts =
      "$_allProducts/category/men's%20clothing";
  static const String _womensClothingProducts =
      "$_allProducts/category/women's%20clothing";
  static String getUrl(String type) {
    switch (type) {
      case "all":
        return _allProducts;
      case "electronics":
        return _electronicsProducts;
      case "jewelery":
        return _jeweleryProducts;
      case "men's clothing":
        return _mensClothingProducts;
      case "women's clothing":
        return _womensClothingProducts;
      default:
        return _singleProduct;
    }
  }
}
