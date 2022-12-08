// To parse this JSON data, do
//
//     final data = dataFromJson(jsonString);

import 'dart:convert';

Data dataFromJson(String str) => Data.fromJson(json.decode(str));

String dataToJson(Data data) => json.encode(data.toJson());

class Data {
    Data({
        this.status,
        this.data,
    });

    final String ?status;
    final DataClass? data;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        status: json["status"],
        data: DataClass.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": data?.toJson(),
    };
}

class DataClass {
    DataClass({
        this.categories,
        this.products,
    });

    final List<dynamic> ?categories;
    final Products? products;

    factory DataClass.fromJson(Map<String, dynamic> json) => DataClass(
        categories: List<dynamic>.from(json["categories"].map((x) => x)),
        products: Products.fromJson(json["products"]),
    );

    Map<String, dynamic> toJson() => {
        "categories": List<dynamic>.from(categories!.map((x) => x)),
        "products": products?.toJson(),
    };
}

class Products {
    Products({
        this.count,
        this.next,
        this.previous,
        this.results,
    });

    final int? count;
    final String ?next;
    final String ?previous;
    final List<Result>? results;

    factory Products.fromJson(Map<String, dynamic> json) => Products(
        count: json["count"],
        next: json["next"],
        previous: json["previous"],
        results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "count": count,
        "next": next,
        "previous": previous,
        "results": List<dynamic>.from(results!.map((x) => x.toJson())),
    };
}

class Result {
    Result({
        this.id,
        this.brand,
        this.image,
        this.charge,
        this.images,
        this.slug,
        this.productName,
        this.model,
        this.commissionType,
        this.amount,
        this.tag,
        this.description,
        this.note,
        this.embaddedVideoLink,
        this.maximumOrder,
        this.stock,
        this.isBackOrder,
        this.specification,
        this.warranty,
        this.preOrder,
        this.productReview,
        this.isSeller,
        this.isPhone,
        this.willShowEmi,
        this.badge,
        this.isActive,
        this.createdAt,
        this.updatedAt,
        this.language,
        this.seller,
        this.combo,
        this.createdBy,
        this.updatedBy,
        this.category,
        this.relatedProduct,
        this.filterValue,
    });

    final int ?id;
    final Brand ?brand;
    final String? image;
    final Charge ?charge;
    final List<Image>? images;
    final String ?slug;
    final String? productName;
    final String?model;
    final CommissionType? commissionType;
    final String ?amount;
    final String ?tag;
    final String ?description;
    final String ?note;
    final String ?embaddedVideoLink;
    final int ?maximumOrder;
    final int ?stock;
    final bool ?isBackOrder;
    final Specification ?specification;
    final String ?warranty;
    final bool ?preOrder;
    final int ?productReview;
    final bool ?isSeller;
    final bool? isPhone;
    final bool ?willShowEmi;
    final dynamic ?badge;
    final bool? isActive;
    final DateTime? createdAt;
    final DateTime ?updatedAt;
    final dynamic? language;
    final Seller? seller;
    final dynamic ?combo;
    final CreatedBy ?createdBy;
    final dynamic ?updatedBy;
    final List<int>? category;
    final List<dynamic> ?relatedProduct;
    final List<dynamic> ?filterValue;

    factory Result.fromJson(Map<String, dynamic> json) => Result(
        id: json["id"],
        brand: Brand.fromJson(json["brand"]),
        image: json["image"],
        charge: Charge.fromJson(json["charge"]),
        images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
        slug: json["slug"],
        productName: json["product_name"],
        model: json["model"],
        commissionType: commissionTypeValues.map[json["commission_type"]],
        amount: json["amount"],
        tag: json["tag"],
        description: json["description"],
        note: json["note"],
        embaddedVideoLink: json["embadded_video_link"],
        maximumOrder: json["maximum_order"],
        stock: json["stock"],
        isBackOrder: json["is_back_order"],
        specification: specificationValues.map[json["specification"]],
        warranty: json["warranty"],
        preOrder: json["pre_order"],
        productReview: json["product_review"],
        isSeller: json["is_seller"],
        isPhone: json["is_phone"],
        willShowEmi: json["will_show_emi"],
        badge: json["badge"],
        isActive: json["is_active"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        language: json["language"],
        seller: sellerValues.map[json["seller"]],
        combo: json["combo"],
        createdBy: createdByValues.map[json["created_by"]],
        updatedBy: json["updated_by"],
        category: List<int>.from(json["category"].map((x) => x)),
        relatedProduct: List<dynamic>.from(json["related_product"].map((x) => x)),
        filterValue: List<dynamic>.from(json["filter_value"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "brand": brand?.toJson(),
        "image": image,
        "charge": charge?.toJson(),
        "images": List<dynamic>.from(images!.map((x) => x.toJson())),
        "slug": slug,
        "product_name": productName,
        "model": model,
        "commission_type": commissionTypeValues.reverse[commissionType],
        "amount": amount,
        "tag": tag,
        "description": description,
        "note": note,
        "embadded_video_link": embaddedVideoLink,
        "maximum_order": maximumOrder,
        "stock": stock,
        "is_back_order": isBackOrder,
        "specification": specificationValues.reverse[specification],
        "warranty": warranty,
        "pre_order": preOrder,
        "product_review": productReview,
        "is_seller": isSeller,
        "is_phone": isPhone,
        "will_show_emi": willShowEmi,
        "badge": badge,
        "is_active": isActive,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
        "language": language,
        "seller": sellerValues.reverse[seller],
        "combo": combo,
        "created_by": createdByValues.reverse[createdBy],
        "updated_by": updatedBy,
        "category": List<dynamic>.from(category!.map((x) => x)),
        "related_product": List<dynamic>.from(relatedProduct!.map((x) => x)),
        "filter_value": List<dynamic>.from(filterValue!.map((x) => x)),
    };
}

class Brand {
    Brand({
        this.name,
        this.image,
        this.headerImage,
        this.slug,
    });

    final Name? name;
    final String? image;
    final dynamic ?headerImage;
    final Slug? slug;

    factory Brand.fromJson(Map<String, dynamic> json) => Brand(
        name: nameValues.map[json["name"]],
        image: json["image"],
        headerImage: json["header_image"],
        slug: slugValues.map[json["slug"]],
    );

    Map<String, dynamic> toJson() => {
        "name": nameValues.reverse[name],
        "image": image,
        "header_image": headerImage,
        "slug": slugValues.reverse[slug],
    };
}

enum Name { RICE }

final nameValues = EnumValues({
    "Rice": Name.RICE
});

enum Slug { RICE }

final slugValues = EnumValues({
    "rice": Slug.RICE
});

class Charge {
    Charge({
        this.bookingPrice,
        this.currentCharge,
        this.discountCharge,
        this.sellingPrice,
        this.profit,
        this.isEvent,
        this.eventId,
        this.highlight,
        this.highlightId,
        this.groupping,
        this.grouppingId,
        this.campaignSectionId,
        this.campaignSection,
        this.message,
    });

    final int? bookingPrice;
    final int ?currentCharge;
    final dynamic ?discountCharge;
    final int ?sellingPrice;
    final int ?profit;
    final bool ?isEvent;
    final dynamic? eventId;
    final bool? highlight;
    final dynamic? highlightId;
    final bool? groupping;
    final dynamic? grouppingId;
    final dynamic ?campaignSectionId;
    final bool ?campaignSection;
    final dynamic ?message;

    factory Charge.fromJson(Map<String, dynamic> json) => Charge(
        bookingPrice: json["booking_price"],
        currentCharge: json["current_charge"],
        discountCharge: json["discount_charge"],
        sellingPrice: json["selling_price"],
        profit: json["profit"],
        isEvent: json["is_event"],
        eventId: json["event_id"],
        highlight: json["highlight"],
        highlightId: json["highlight_id"],
        groupping: json["groupping"],
        grouppingId: json["groupping_id"],
        campaignSectionId: json["campaign_section_id"],
        campaignSection: json["campaign_section"],
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "booking_price": bookingPrice,
        "current_charge": currentCharge,
        "discount_charge": discountCharge,
        "selling_price": sellingPrice,
        "profit": profit,
        "is_event": isEvent,
        "event_id": eventId,
        "highlight": highlight,
        "highlight_id": highlightId,
        "groupping": groupping,
        "groupping_id": grouppingId,
        "campaign_section_id": campaignSectionId,
        "campaign_section": campaignSection,
        "message": message,
    };
}

enum CommissionType { PERCENT }

final commissionTypeValues = EnumValues({
    "Percent": CommissionType.PERCENT
});

enum CreatedBy { QTECSL }

final createdByValues = EnumValues({
    "qtecsl": CreatedBy.QTECSL
});

class Image {
    Image({
        this.id,
        this.image,
        this.isPrimary,
        this.product,
    });

    final int? id;
    final String ?image;
    final bool ?isPrimary;
    final int? product;

    factory Image.fromJson(Map<String, dynamic> json) => Image(
        id: json["id"],
        image: json["image"],
        isPrimary: json["is_primary"],
        product: json["product"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
        "is_primary": isPrimary,
        "product": product,
    };
}

enum Seller { SUPPLY_LINE }

final sellerValues = EnumValues({
    "SupplyLine": Seller.SUPPLY_LINE
});

enum Specification { EMPTY }

final specificationValues = EnumValues({
    "<|>": Specification.EMPTY
});

class EnumValues<T> {
    Map<String, T> map;
    Map<T, String> ?reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap!;
    }
}
