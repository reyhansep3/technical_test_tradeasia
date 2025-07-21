
class TopProductResponse {
  final bool status;
  final TopProduct data;
  final String message;

  TopProductResponse({
    required this.status,
    required this.data,
    required this.message,
  });

  factory TopProductResponse.fromJson(Map<String, dynamic> json) {
    return TopProductResponse(
      status: json['status'],
      data: TopProduct.fromJson(json['data']),
      message: json['message'],
    );
  }
}

class TopProduct {
  final int currentPage;
  final List<Product> data;
  final String firstPageUrl;
  final int from;
  final int lastPage;
  final String lastPageUrl;
  final List<PaginationLink> links;
  final dynamic nextPageUrl;
  final String path;
  final int perPage;
  final dynamic prevPageUrl;
  final int to;
  final int total;

  TopProduct({
    required this.currentPage,
    required this.data,
    required this.firstPageUrl,
    required this.from,
    required this.lastPage,
    required this.lastPageUrl,
    required this.links,
    this.nextPageUrl,
    required this.path,
    required this.perPage,
    this.prevPageUrl,
    required this.to,
    required this.total,
  });

  factory TopProduct.fromJson(Map<String, dynamic> json) {
    return TopProduct(
      currentPage: json['current_page'],
      data: List<Product>.from(json['data'].map((x) => Product.fromJson(x))),
      firstPageUrl: json['first_page_url'],
      from: json['from'],
      lastPage: json['last_page'],
      lastPageUrl: json['last_page_url'],
      links: List<PaginationLink>.from(json['links'].map((x) => PaginationLink.fromJson(x))),
      nextPageUrl: json['next_page_url'],
      path: json['path'],
      perPage: json['per_page'],
      prevPageUrl: json['prev_page_url'],
      to: json['to'],
      total: json['total'],
    );
  }
}

class Product {
  final int id;
  final String productimage;
  final String productname;
  final String casNumber;
  final String iupacName;
  final String hsCode;
  final String formula;
  final int priority;

  Product({
    required this.id,
    required this.productimage,
    required this.productname,
    required this.casNumber,
    required this.iupacName,
    required this.hsCode,
    required this.formula,
    required this.priority,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      productimage: json['productimage'],
      productname: json['productname'],
      casNumber: json['cas_number'],
      iupacName: json['iupac_name'],
      hsCode: json['hs_code'],
      formula: json['formula'],
      priority: json['priority'],
    );
  }
}

class PaginationLink {
  final String? url;
  final String label;
  final bool active;

  PaginationLink({
    this.url,
    required this.label,
    required this.active,
  });

  factory PaginationLink.fromJson(Map<String, dynamic> json) {
    return PaginationLink(
      url: json['url'],
      label: json['label'],
      active: json['active'],
    );
  }
}
