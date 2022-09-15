// To parse this JSON data, do
//
//     final CommissionHistoryResponse = CommissionHistoryResponseFromJson(jsonString);

import 'dart:convert';

CommissionHistoryResponse commissionHistoryResponseFromJson(String str) => CommissionHistoryResponse.fromJson(json.decode(str));

String commissionHistoryResponseToJson(CommissionHistoryResponse data) => json.encode(data.toJson());

class CommissionHistoryResponse {
  CommissionHistoryResponse({
    this.data,
    this.links,
    this.meta,
  });

  List<Commission> data;
  Links links;
  Meta meta;

  factory CommissionHistoryResponse.fromJson(Map<String, dynamic> json) => CommissionHistoryResponse(
    data: List<Commission>.from(json["data"].map((x) => Commission.fromJson(x))),
    links: Links.fromJson(json["links"]),
    meta: Meta.fromJson(json["meta"]),
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
    "links": links.toJson(),
    "meta": meta.toJson(),
  };
}

class Commission {
  Commission({
    this.id,
    this.orderCode,
    this.adminCommission,
    this.sellerEarning,
    this.createdAt,
  });

  int id;
  String orderCode;
  var adminCommission;
  String sellerEarning;
  String createdAt;

  factory Commission.fromJson(Map<String, dynamic> json) => Commission(
    id: json["id"],
    orderCode: json["order_code"],
    adminCommission: json["admin_commission"],
    sellerEarning: json["seller_earning"],
    createdAt: json["created_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "order_code": orderCode,
    "admin_commission": adminCommission,
    "seller_earning": sellerEarning,
    "created_at": createdAt,
  };
}

class Links {
  Links({
    this.first,
    this.last,
    this.prev,
    this.next,
  });

  String first;
  String last;
  dynamic prev;
  dynamic next;

  factory Links.fromJson(Map<String, dynamic> json) => Links(
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

  int currentPage;
  int from;
  int lastPage;
  List<Link> links;
  String path;
  int perPage;
  int to;
  int total;

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
    "links": List<dynamic>.from(links.map((x) => x.toJson())),
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

  String url;
  String label;
  bool active;

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
