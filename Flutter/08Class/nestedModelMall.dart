class Shop {
  final int shopId;
  final String shopName;
  final List<ShopSales> sales;

  Shop({
    required this.shopId,
    required this.shopName,
    required this.sales,
  });

  // Calculate total sales of the shop
  double get totalSales {
    double total = 0;

    sales.forEach((item) {
      total += item.salesAmount;
    });

    return total;
  }

  // Print individual shop sales report
  String shopSalesPrint() {
    String output =
        "Shop ID: $shopId\nShop Name: $shopName";

    sales.forEach((item) {
      output +=
          "\nProduct: ${item.productName}"
          " | Sales: Rs. ${item.salesAmount.toStringAsFixed(2)}";
    });

    output += "\n--------------------------------------";
    output +=
        "\nTotal Sales: Rs. ${totalSales.toStringAsFixed(2)}";

    return output;
  }
}

class ShopSales {
  final String productName;
  final double salesAmount;

  ShopSales({
    required this.productName,
    required this.salesAmount,
  });
}

void main() {
  // Mall containing 7 shops
  final List<Shop> mallShops = [
    Shop(
      shopId: 1,
      shopName: "Fashion Hub",
      sales: [
        ShopSales(productName: "Shirts", salesAmount: 50000),
        ShopSales(productName: "Jeans", salesAmount: 75000),
        ShopSales(productName: "Shoes", salesAmount: 60000),
      ],
    ),
    Shop(
      shopId: 2,
      shopName: "Tech World",
      sales: [
        ShopSales(productName: "Mobiles", salesAmount: 150000),
        ShopSales(productName: "Laptops", salesAmount: 200000),
        ShopSales(productName: "Headphones", salesAmount: 45000),
      ],
    ),
    Shop(
      shopId: 3,
      shopName: "Super Mart",
      sales: [
        ShopSales(productName: "Groceries", salesAmount: 80000),
        ShopSales(productName: "Drinks", salesAmount: 35000),
        ShopSales(productName: "Snacks", salesAmount: 25000),
      ],
    ),
    Shop(
      shopId: 4,
      shopName: "Shoe Palace",
      sales: [
        ShopSales(productName: "Sneakers", salesAmount: 90000),
        ShopSales(productName: "Formal Shoes", salesAmount: 65000),
        ShopSales(productName: "Sandals", salesAmount: 30000),
      ],
    ),
    Shop(
      shopId: 5,
      shopName: "Beauty Store",
      sales: [
        ShopSales(productName: "Makeup", salesAmount: 40000),
        ShopSales(productName: "Perfumes", salesAmount: 55000),
        ShopSales(productName: "Skincare", salesAmount: 35000),
      ],
    ),
    Shop(
      shopId: 6,
      shopName: "Book Corner",
      sales: [
        ShopSales(productName: "Books", salesAmount: 25000),
        ShopSales(productName: "Notebooks", salesAmount: 15000),
        ShopSales(productName: "Stationery", salesAmount: 10000),
      ],
    ),
    Shop(
      shopId: 7,
      shopName: "Food Court",
      sales: [
        ShopSales(productName: "Burgers", salesAmount: 70000),
        ShopSales(productName: "Pizza", salesAmount: 85000),
        ShopSales(productName: "Drinks", salesAmount: 30000),
      ],
    ),
  ];

  // Print all shops' sales reports
  print("========== MALL SALES REPORT ==========");

  mallShops.forEach((shop) {
    print("\n======================================");
    print(shop.shopSalesPrint());
    print("======================================");
  });

  // Create a copy of the list for sorting
  final sortedShops = [...mallShops];

  // Sort shops by total sales (highest first)
  sortedShops.sort(
    (a, b) => b.totalSales.compareTo(a.totalSales),
  );

  // Print Top 3 Best-Selling Shops using forEach
  print("\n========== TOP 3 SELLER SHOPS ==========");

  int rank = 0;

  sortedShops.take(3).forEach((shop) {
    rank++;

    print("\nRank: $rank");
    print("Shop ID: ${shop.shopId}");
    print("Shop Name: ${shop.shopName}");
    print(
      "Total Sales: Rs. ${shop.totalSales.toStringAsFixed(2)}",
    );
    print("--------------------------------------");
  });
}