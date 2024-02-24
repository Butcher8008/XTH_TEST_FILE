class Product {
  final String key;
  final String thumb;
  final String name;
  final String productId;
  final String categoryId;
  final String manufacturerName;
  final String? model;
  final List<dynamic> option; // This can be of any type, adjust as needed
  final String quantity;
  final String minimum;
  final String maximum;
  final bool stock;
  final String reward;
  final double priceNoTax;
  final String priceNoTaxFormatted;
  final String price;
  final String priceFormatted;
  final String total;
  final String totalFormatted;
  final int avaialbleQuantity;
  final dynamic crossDiscount; // This can be of any type, adjust as needed
  final String enName;
  final String eventPrice;
  final List<dynamic> special; // This can be of any type, adjust as needed
  final List<CategoryHierarchy> categoryHierarchy;

  Product({
    required this.key,
    required this.thumb,
    required this.name,
    required this.productId,
    required this.categoryId,
    required this.manufacturerName,
    required this.model,
    required this.option,
    required this.quantity,
    required this.minimum,
    required this.maximum,
    required this.stock,
    required this.reward,
    required this.priceNoTax,
    required this.priceNoTaxFormatted,
    required this.price,
    required this.priceFormatted,
    required this.total,
    required this.totalFormatted,
    required this.avaialbleQuantity,
    required this.crossDiscount,
    required this.enName,
    required this.eventPrice,
    required this.special,
    required this.categoryHierarchy,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      key: json['key'],
      thumb: json['thumb'],
      name: json['name'],
      productId: json['product_id'],
      categoryId: json['category_id'],
      manufacturerName: json['manufacturer_name'],
      model: json['model'],
      option: json['option'],
      quantity: json['quantity'],
      minimum: json['minimum'],
      maximum: json['maximum'],
      stock: json['stock'],
      reward: json['reward'],
      priceNoTax: json['price_no_tax'],
      priceNoTaxFormatted: json['price_no_tax_formatted'],
      price: json['price'],
      priceFormatted: json['price_formatted'],
      total: json['total'],
      totalFormatted: json['total_formatted'],
      avaialbleQuantity: json['avaialble_quantity'],
      crossDiscount: json['cross_discount'],
      enName: json['en_name'],
      eventPrice: json['event_price'],
      special: json['special'],
      categoryHierarchy: List<CategoryHierarchy>.from(json['category_hierarchy'].map((x) => CategoryHierarchy.fromJson(x))),
    );
  }
}

class CategoryHierarchy {
  final String categoryId;
  final String name;
  final String enName;

  CategoryHierarchy({
    required this.categoryId,
    required this.name,
    required this.enName,
  });

  factory CategoryHierarchy.fromJson(Map<String, dynamic> json) {
    return CategoryHierarchy(
      categoryId: json['category_id'],
      name: json['name'],
      enName: json['en_name'],
    );
  }
}

class CartData {
  final List<Product> products;
  final List<dynamic> vouchers; // This can be of any type, adjust as needed
  final String couponStatus;
  final String coupon;
  final dynamic voucherStatus; // This can be of any type, adjust as needed
  final String voucher;
  final int rewardStatus;
  final String reward;
  final List<Totals> totals;
  final String offer;
  final int offerAverage;
  final String total;
  final double totalRaw;
  final int totalProductCount;

  CartData({
    required this.products,
    required this.vouchers,
    required this.couponStatus,
    required this.coupon,
    required this.voucherStatus,
    required this.voucher,
    required this.rewardStatus,
    required this.reward,
    required this.totals,
    required this.offer,
    required this.offerAverage,
    required this.total,
    required this.totalRaw,
    required this.totalProductCount,
  });

  factory CartData.fromJson(Map<String, dynamic> json) {
    return CartData(
      products: List<Product>.from(json['products'].map((x) => Product.fromJson(x))),
      vouchers: json['vouchers'],
      couponStatus: json['coupon_status'],
      coupon: json['coupon'],
      voucherStatus: json['voucher_status'],
      voucher: json['voucher'],
      rewardStatus: json['reward_status'],
      reward: json['reward'],
      totals: List<Totals>.from(json['totals'].map((x) => Totals.fromJson(x))),
      offer: json['offer'],
      offerAverage: json['offer_average'],
      total: json['total'],
      totalRaw: json['total_raw'],
      totalProductCount: json['total_product_count'],
    );
  }
}

class Totals {
  final String title;
  final String text;
  final String value;
  final String code;

  Totals({
    required this.title,
    required this.text,
    required this.value,
    required this.code,
  });

  factory Totals.fromJson(Map<String, dynamic> json) {
    return Totals(
      title: json['title'],
      text: json['text'],
      value: json['value'],
      code: json['code'],
    );
  }
}

class RecommendedProduct {
  final String id;
  final String thumb;
  final String priceFormatted;
  final double priceWithoutCurrency;
  final String price;
  final String name;
  final String enName;
  final String description;
  final String sku;
  final String isbn;
  final bool hasOption;
  final int categoryId;
  final int quantity;
  final List<dynamic> special; // This can be of any type, adjust as needed
  final String manufacturer;
  final bool isNew;
  final bool isExclusive;
  final int order;
  final dynamic score; // This can be of any type, adjust as needed
  final String eventPrice;
  final double rating;
  final String totalReviews;
  final String seoUrlAr;
  final String seoUrlEn;
  final String shareUrl;
  final List<Option> options;

  RecommendedProduct({
    required this.id,
    required this.thumb,
    required this.priceFormatted,
    required this.priceWithoutCurrency,
    required this.price,
    required this.name,
    required this.enName,
    required this.description,
    required this.sku,
    required this.isbn,
    required this.hasOption,
    required this.categoryId,
    required this.quantity,
    required this.special,
    required this.manufacturer,
    required this.isNew,
    required this.isExclusive,
    required this.order,
    required this.score,
    required this.eventPrice,
    required this.rating,
    required this.totalReviews,
    required this.seoUrlAr,
    required this.seoUrlEn,
    required this.shareUrl,
    required this.options,
  });

  factory RecommendedProduct.fromJson(Map<String, dynamic> json) {
    return RecommendedProduct(
      id: json['id'],
      thumb: json['thumb'],
      priceFormatted: json['price_formated'],
      priceWithoutCurrency: json['priceWithoutCurrency'],
      price: json['price'],
      name: json['name'],
      enName: json['en_name'],
      description: json['description'],
      sku: json['sku'],
      isbn: json['isbn'],
      hasOption: json['has_option'],
      categoryId: json['category_id'],
      quantity: json['quantity'],
      special: json['special'],
      manufacturer: json['manufacturer'],
      isNew: json['is_new'],
      isExclusive: json['is_exclusive'],
      order: json['order'],
      score: json['score'],
      eventPrice: json['event_price'],
      rating: json['rating'],
      totalReviews: json['total_reviews'],
      seoUrlAr: json['seo_url_ar'],
      seoUrlEn: json['seo_url_en'],
      shareUrl: json['share_url'],
      options: List<Option>.from(json['options'].map((x) => Option.fromJson(x))),
    );
  }
}

class Option {
  final int optionId;
  final int productOptionId;
  final String type;
  final int required;
  final String name;
  final String enName;
  final List<OptionValue> optionValue;

  Option({
    required this.optionId,
    required this.productOptionId,
    required this.type,
    required this.required,
    required this.name,
    required this.enName,
    required this.optionValue,
  });

  factory Option.fromJson(Map<String, dynamic> json) {
    return Option(
      optionId: json['option_id'],
      productOptionId: json['product_option_id'],
      type: json['type'],
      required: json['required'],
      name: json['name'],
      enName: json['en_name'],
      optionValue: List<OptionValue>.from(json['option_value'].map((x) => OptionValue.fromJson(x))),
    );
  }
}

class OptionValue {
  final int productOptionVariantId;
  final int quantity;
  final String image;
  final String hexColor;
  final String sku;
  final String price;
  final String priceFormatted;
  final String eventPrice;
  final String name;
  final String enName;

  OptionValue({
    required this.productOptionVariantId,
    required this.quantity,
    required this.image,
    required this.hexColor,
    required this.sku,
    required this.price,
    required this.priceFormatted,
    required this.eventPrice,
    required this.name,
    required this.enName,
  });

  factory OptionValue.fromJson(Map<String, dynamic> json) {
    return OptionValue(
      productOptionVariantId: json['product_option_variant_id'],
      quantity: json['quantity'],
      image: json['image'],
      hexColor: json['hex_color'],
      sku: json['sku'],
      price: json['price'],
      priceFormatted: json['price_formated'],
      eventPrice: json['event_price'],
      name: json['name'],
      enName: json['en_name'],
    );
  }
}
