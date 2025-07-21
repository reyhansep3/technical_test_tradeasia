class ProductDetailResponse {
  bool status;
  Data data;
  String message;

  ProductDetailResponse({
    required this.status,
    required this.data,
    required this.message,
  });

  factory ProductDetailResponse.fromJson(Map<String, dynamic> json) {
    return ProductDetailResponse(
      status: json['status'],
      data: Data.fromJson(json['data']),
      message: json['message'],
    );
  }
}

class Data {
  ProductDetail productDetail;
  List<RelatedProduct> relatedProduct;
  SalesAssociateInfo salesAssociateInfo;
  BasicInfo basicInfo;

  Data({
    required this.productDetail,
    required this.relatedProduct,
    required this.salesAssociateInfo,
    required this.basicInfo,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      productDetail: ProductDetail.fromJson(json['productDetail']),
      relatedProduct: List<RelatedProduct>.from(
          json['relatedProduct'].map((x) => RelatedProduct.fromJson(x))),
      salesAssociateInfo: SalesAssociateInfo.fromJson(json['salesAssociateInfo']),
      basicInfo: BasicInfo.fromJson(json['basicInfo']),
    );
  }
}

class BasicInfo {
  String phyAppearName;
  String packagingName;
  String commonNames;

  BasicInfo({
    required this.phyAppearName,
    required this.packagingName,
    required this.commonNames,
  });

  factory BasicInfo.fromJson(Map<String, dynamic> json) {
    return BasicInfo(
      phyAppearName: json['phyAppearName'],
      packagingName: json['packagingName'],
      commonNames: json['commonNames'],
    );
  }
}

class ProductDetail {
  String productimage;
  String productname;
  String iupacName;
  String casNumber;
  String hsCode;
  String formula;
  String tdsFile;
  String msdsFile;
  String description;
  String application;
  int phyAppearId;
  String commonNames;
  int prodindId;
  int categoryId;
  List<ProductIndustry> productIndustries;
  String prodindName;
  String categoryName;

  ProductDetail({
    required this.productimage,
    required this.productname,
    required this.iupacName,
    required this.casNumber,
    required this.hsCode,
    required this.formula,
    required this.tdsFile,
    required this.msdsFile,
    required this.description,
    required this.application,
    required this.phyAppearId,
    required this.commonNames,
    required this.prodindId,
    required this.categoryId,
    required this.productIndustries,
    required this.prodindName,
    required this.categoryName,
  });

  factory ProductDetail.fromJson(Map<String, dynamic> json) {
    return ProductDetail(
      productimage: json['productimage'],
      productname: json['productname'],
      iupacName: json['iupacName'],
      casNumber: json['casNumber'],
      hsCode: json['hsCode'],
      formula: json['formula'],
      tdsFile: json['tdsFile'],
      msdsFile: json['msdsFile'],
      description: json['description'],
      application: json['application'],
      phyAppearId: json['phyAppearId'],
      commonNames: json['commonNames'],
      prodindId: json['prodindId'],
      categoryId: json['categoryId'],
      productIndustries: List<ProductIndustry>.from(
        json['productIndustries'].map((x) => ProductIndustry.fromJson(x)),
      ),
      prodindName: json['prodindName'],
      categoryName: json['categoryName'],
    );
  }
}

class ProductIndustry {
  int id;
  int prodindId;
  int languageId;
  String prodindName;
  String prodindDesc;
  String prodindUrl;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;

  ProductIndustry({
    required this.id,
    required this.prodindId,
    required this.languageId,
    required this.prodindName,
    required this.prodindDesc,
    required this.prodindUrl,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
  });

  factory ProductIndustry.fromJson(Map<String, dynamic> json) {
    return ProductIndustry(
      id: json['id'],
      prodindId: json['prodindId'],
      languageId: json['languageId'],
      prodindName: json['prodindName'],
      prodindDesc: json['prodindDesc'],
      prodindUrl: json['prodindUrl'],
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
      deletedAt: json['deletedAt'],
    );
  }
}

class RelatedProduct {
  int id;
  String productimage;
  String productname;
  String casNumber;
  String hsCode;
  String formula;
  String iupacName;

  RelatedProduct({
    required this.id,
    required this.productimage,
    required this.productname,
    required this.casNumber,
    required this.hsCode,
    required this.formula,
    required this.iupacName,
  });

  factory RelatedProduct.fromJson(Map<String, dynamic> json) {
    return RelatedProduct(
      id: json['id'],
      productimage: json['productimage'],
      productname: json['productname'],
      casNumber: json['casNumber'],
      hsCode: json['hsCode'],
      formula: json['formula'],
      iupacName: json['iupacName'],
    );
  }
}

class SalesAssociateInfo {
  dynamic id;
  dynamic cometChatUserId;

  SalesAssociateInfo({
    required this.id,
    required this.cometChatUserId,
  });

  factory SalesAssociateInfo.fromJson(Map<String, dynamic> json) {
    return SalesAssociateInfo(
      id: json['id'],
      cometChatUserId: json['cometChatUserId'],
    );
  }
}
