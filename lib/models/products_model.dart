// To parse this JSON data, do
//
//     final productsModel = productsModelFromJson(jsonString);

import 'dart:convert';

ProductsModel productsModelFromJson(String str) =>
    ProductsModel.fromJson(json.decode(str));

String productsModelToJson(ProductsModel data) => json.encode(data.toJson());

class ProductsModel {
  ProductsModel({
    this.data,
    this.links,
    this.meta,
    this.success,
    this.status,
  });

  List<Datum>? data;
  ProductsModelLinks? links;
  Meta? meta;
  bool? success;
  int? status;

  factory ProductsModel.fromJson(Map<String, dynamic> json) => ProductsModel(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        links: ProductsModelLinks.fromJson(json["links"]),
        meta: Meta.fromJson(json["meta"]),
        success: json["success"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
        "links": links!.toJson(),
        "meta": meta!.toJson(),
        "success": success,
        "status": status,
      };
}

class Datum {
  Datum({
    this.id,
    this.name,
    this.thumbnailImage,
    this.bannerImage,
    this.hasDiscount,
    this.strokedPrice,
    this.minQty,
    this.maxQty,
    this.mainPrice,
    this.strokedPriceWu,
    this.mainPriceWu,
    this.rating,
    this.sales,
    this.inCart,
    this.unit,
    this.unitValue,
    this.lowStockQuantity,
    this.quantity,
    this.stock,
    this.description,
    this.links,
  });

  int? id;
  String? name;
  String? thumbnailImage;
  dynamic bannerImage;
  bool? hasDiscount;
  String? strokedPrice;
  int? minQty;
  int? maxQty;
  String? mainPrice;
  int? strokedPriceWu;
  int? mainPriceWu;
  int? rating;
  int? sales;
  int? inCart;
  Unit? unit;
  int? unitValue;
  int? lowStockQuantity;
  int? quantity;
  int? stock;
  String? description;
  DatumLinks? links;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        name: json["name"],
        thumbnailImage: json["thumbnail_image"],
        bannerImage: json["banner_image"],
        hasDiscount: json["has_discount"],
        strokedPrice: json["stroked_price"],
        minQty: json["min_qty"],
        maxQty: json["max_qty"],
        mainPrice: json["main_price"],
        strokedPriceWu: json["stroked_price_wu"],
        mainPriceWu: json["main_price_wu"],
        rating: json["rating"],
        sales: json["sales"],
        inCart: json["in_cart"],
        unit: unitValues.map![json["unit"]],
        unitValue: json["unit_value"],
        lowStockQuantity: json["low_stock_quantity"],
        quantity: json["quantity"],
        stock: json["stock"],
        description: json["description"],
        links: DatumLinks.fromJson(json["links"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "thumbnail_image": thumbnailImage,
        "banner_image": bannerImage,
        "has_discount": hasDiscount,
        "stroked_price": strokedPrice,
        "min_qty": minQty,
        "max_qty": maxQty,
        "main_price": mainPrice,
        "stroked_price_wu": strokedPriceWu,
        "main_price_wu": mainPriceWu,
        "rating": rating,
        "sales": sales,
        "in_cart": inCart,
        "unit": unitValues.reverse[unit],
        "unit_value": unitValue,
        "low_stock_quantity": lowStockQuantity,
        "quantity": quantity,
        "stock": stock,
        "description": description,
        "links": links!.toJson(),
      };
}

class DatumLinks {
  DatumLinks({
    this.details,
  });

  String? details;

  factory DatumLinks.fromJson(Map<String, dynamic> json) => DatumLinks(
        details: json["details"],
      );

  Map<String, dynamic> toJson() => {
        "details": details,
      };
}

enum Unit { THE_1_BUNDLE, THE_1_KG, THE_12_PCS }

final unitValues = EnumValues({
  "12 pcs": Unit.THE_12_PCS,
  "1 bundle": Unit.THE_1_BUNDLE,
  "1 kg": Unit.THE_1_KG
});

class ProductsModelLinks {
  ProductsModelLinks({
    this.first,
    this.last,
    this.prev,
    this.next,
  });

  String? first;
  String? last;
  dynamic prev;
  String? next;

  factory ProductsModelLinks.fromJson(Map<String, dynamic> json) =>
      ProductsModelLinks(
        first: json["first"],
        last: json["last"],
        prev: json["prev"],
        next: json["next"],
      );

  Map<String, dynamic> toJson() => {
        "first": first,
        "last": last,
        "prev": prev,
        "next": next,
      };
}

class Meta {
  Meta({
    this.currentPage,
    this.from,
    this.lastPage,
    this.links,
    this.path,
    this.perPage,
    this.to,
    this.total,
  });

  int? currentPage;
  int? from;
  int? lastPage;
  List<Link>? links;
  String? path;
  int? perPage;
  int? to;
  int? total;

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        currentPage: json["current_page"],
        from: json["from"],
        lastPage: json["last_page"],
        links: List<Link>.from(json["links"].map((x) => Link.fromJson(x))),
        path: json["path"],
        perPage: json["per_page"],
        to: json["to"],
        total: json["total"],
      );

  Map<String, dynamic> toJson() => {
        "current_page": currentPage,
        "from": from,
        "last_page": lastPage,
        "links": List<dynamic>.from(links!.map((x) => x.toJson())),
        "path": path,
        "per_page": perPage,
        "to": to,
        "total": total,
      };
}

class Link {
  Link({
    this.url,
    this.label,
    this.active,
  });

  String? url;
  String? label;
  bool? active;

  factory Link.fromJson(Map<String, dynamic> json) => Link(
        url: json["url"] == null ? null : json["url"],
        label: json["label"],
        active: json["active"],
      );

  Map<String, dynamic> toJson() => {
        "url": url == null ? null : url,
        "label": label,
        "active": active,
      };
}

class EnumValues<T> {
  Map<String, T>? map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map!.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap!;
  }
}
