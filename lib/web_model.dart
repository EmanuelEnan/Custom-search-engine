// class WebModel {
//   String? sType;
//   String? didUMean;
//   int? totalCount;

//   WebModel({
//     required this.sType,
//     required this.didUMean,
//     required this.totalCount,
//   });

//   WebModel.fromJson(Map<dynamic, dynamic> json) {
//     sType = json['_type'];
//     didUMean = json['didUMean'];
//     totalCount = json['totalCount'];
//   }

//   Map<String, dynamic> toJson() {
//     final data = <String, dynamic>{};
//     data['_type'] = sType;
//     data['didUMean'] = didUMean;
//     data['totalCount'] = totalCount;

//     return data;
//   }
// }

import 'dart:convert';

WebModel webModelFromJson(String str) => WebModel.fromJson(json.decode(str));

String webModelToJson(WebModel data) => json.encode(data.toJson());

class WebModel {
  WebModel({
    required this.type,
    required this.didUMean,
    required this.totalCount,
    required this.value,
  });

  String type;
  String didUMean;
  int totalCount;

  List<Value> value;

  factory WebModel.fromJson(Map<String, dynamic> json) => WebModel(
        type: json["_type"],
        didUMean: json["didUMean"],
        totalCount: json["totalCount"],
        value: List<Value>.from(json["value"].map((x) => Value.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "_type": type,
        "didUMean": didUMean,
        "totalCount": totalCount,
        "value": List<dynamic>.from(value.map((x) => x.toJson())),
      };
}

class Value {
  Value({
    required this.id,
    required this.title,
    required this.url,
    required this.description,
    required this.body,
    required this.snippet,
    required this.keywords,
    required this.isSafe,
    required this.datePublished,
    required this.provider,
    required this.image,
  });

  String id;
  String title;
  String url;
  String description;
  String body;
  String snippet;
  String keywords;

  bool isSafe;
  DateTime datePublished;
  Provider provider;
  ImageShow image;

  factory Value.fromJson(Map<String, dynamic> json) => Value(
        id: json["id"],
        title: json["title"],
        url: json["url"],
        description: json["description"],
        body: json["body"],
        snippet: json["snippet"],
        keywords: json["keywords"],
        isSafe: json["isSafe"],
        datePublished: DateTime.parse(json["datePublished"]),
        provider: Provider.fromJson(json["provider"]),
        image: ImageShow.fromJson(json["image"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "url": url,
        "description": description,
        "body": body,
        "snippet": snippet,
        "keywords": keywords,
        "isSafe": isSafe,
        "datePublished": datePublished.toIso8601String(),
        "provider": provider.toJson(),
        "image": image.toJson(),
      };
}

class ImageShow {
  ImageShow({
    required this.url,
    required this.height,
    required this.width,
    required this.thumbnail,
    required this.thumbnailHeight,
    required this.thumbnailWidth,
    required this.base64Encoding,
    this.name,
    this.title,
    required this.provider,
    this.imageWebSearchUrl,
    required this.webpageUrl,
  });

  String url;
  int height;
  int width;
  String thumbnail;
  int thumbnailHeight;
  int thumbnailWidth;
  String base64Encoding;
  dynamic name;
  dynamic title;
  Provider provider;
  dynamic imageWebSearchUrl;
  String webpageUrl;

  factory ImageShow.fromJson(Map<String, dynamic> json) => ImageShow(
        url: json["url"],
        height: json["height"],
        width: json["width"],
        thumbnail: json["thumbnail"],
        thumbnailHeight: json["thumbnailHeight"],
        thumbnailWidth: json["thumbnailWidth"],
        base64Encoding: json["base64Encoding"],
        name: json["name"],
        title: json["title"],
        provider: Provider.fromJson(json["provider"]),
        imageWebSearchUrl: json["imageWebSearchUrl"],
        webpageUrl: json["webpageUrl"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
        "height": height,
        "width": width,
        "thumbnail": thumbnail,
        "thumbnailHeight": thumbnailHeight,
        "thumbnailWidth": thumbnailWidth,
        "base64Encoding": base64Encoding,
        "name": name,
        "title": title,
        "provider": provider.toJson(),
        "imageWebSearchUrl": imageWebSearchUrl,
        "webpageUrl": webpageUrl,
      };
}

class Provider {
  Provider({
    required this.name,
    required this.favIcon,
    required this.favIconBase64Encoding,
  });

  String name;
  String favIcon;
  String favIconBase64Encoding;

  factory Provider.fromJson(Map<String, dynamic> json) => Provider(
        name: json["name"],
        favIcon: json["favIcon"],
        favIconBase64Encoding: json["favIconBase64Encoding"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "favIcon": favIcon,
        "favIconBase64Encoding": favIconBase64Encoding,
      };
}
