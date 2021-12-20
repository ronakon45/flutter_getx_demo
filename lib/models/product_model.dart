// To parse this JSON data, do
//
//     final productGetByPartnerModel = productGetByPartnerModelFromJson(jsonString);

import 'dart:convert';

List<ProductModel> productModelFromJson(String str) => List<ProductModel>.from(
    json.decode(str).map((x) => ProductModel.fromJson(x)));

// String productModelToJson(List<ProductModel> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductModel {
  ProductModel({
    required this.company,
    required this.productCode,
    required this.descTha,
    required this.descEng,
    required this.gtin13,
    required this.carbonFootprint,
    required this.carbonFootprintPer,
    required this.servingSize,
    required this.calories,
    required this.caloriesFromFat,
    required this.certifiedMsgTha,
    required this.certifiedMsgEng,
    required this.sustainTextThai,
    required this.sustainTextEng,
    required this.groupForMenu,
    required this.recommendMenu,
    required this.productVdoTha,
    required this.productVdoEng,
    required this.onlineShopUrl,
    required this.activeFlag,
    required this.nutritionUrl,
    required this.nutritionPathTha,
    required this.nutritionPathEng,
    required this.productImages,
    required this.productValues,
    required this.bannerPath,
    required this.bannerStr,
    required this.onlineShopTextTha,
    required this.onlineShopTextEng,
    required this.productSelectionEng,
    required this.productSelectionTha,
    required this.gdaPathEng,
    required this.gdaPathTha,
    required this.rmFlag,
  });

  String company;
  String productCode;
  String descTha;
  String descEng;
  String gtin13;
  String carbonFootprint;
  String carbonFootprintPer;
  String servingSize;
  String calories;
  String caloriesFromFat;
  String certifiedMsgTha;
  String certifiedMsgEng;
  String sustainTextThai;
  String sustainTextEng;
  String groupForMenu;
  String recommendMenu;
  String productVdoTha;
  String productVdoEng;
  String onlineShopUrl;
  String activeFlag;
  String nutritionUrl;
  String nutritionPathTha;
  String nutritionPathEng;
  String productImages;
  String productValues;
  String bannerPath;
  String bannerStr;
  String onlineShopTextTha;
  String onlineShopTextEng;
  String productSelectionEng;
  String productSelectionTha;
  String gdaPathEng;
  String gdaPathTha;
  String rmFlag;

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        company: json["company"] ?? "",
        productCode: json["productCode"] ?? "",
        descTha: json["descTha"] ?? "",
        descEng: json["descEng"] ?? "",
        gtin13: json["gtin13"] ?? "",
        carbonFootprint: json["carbonFootprint"] ?? "",
        carbonFootprintPer: json["carbonFootprintPer"] ?? "",
        servingSize: json["servingSize"] ?? "",
        calories: json["calories"] ?? "",
        caloriesFromFat: json["caloriesFromFat"] ?? "",
        certifiedMsgTha: json["certifiedMsgTha"] ?? "",
        certifiedMsgEng: json["certifiedMsgEng"] ?? "",
        sustainTextThai: json["sustainTextThai"] ?? "",
        sustainTextEng: json["sustainTextEng"] ?? "",
        groupForMenu: json["groupForMenu"] ?? "",
        recommendMenu: json["recommendMenu"] ?? "",
        productVdoTha: json["productVdoTha"] ?? "",
        productVdoEng: json["productVdoEng"] ?? "",
        onlineShopUrl: json["onlineShopUrl"] ?? "",
        activeFlag: json["activeFlag"] ?? "",
        nutritionUrl: json["nutritionUrl"] ?? "",
        nutritionPathTha: json["nutritionPathTha"] ?? "",
        nutritionPathEng: json["nutritionPathEng"] ?? "",
        productImages: json["productImages"] ?? "",
        productValues: json["productValues"] ?? "",
        bannerPath: json["bannerPath"] ?? "",
        bannerStr: json["bannerStr"] ?? "",
        onlineShopTextTha: json["onlineShopTextTha"] ?? "",
        onlineShopTextEng: json["onlineShopTextEng"] ?? "",
        productSelectionEng: json["productSelectionEng"] ?? "",
        productSelectionTha: json["productSelectionTha"] ?? "",
        gdaPathEng: json["gdaPathEng"] ?? "",
        gdaPathTha: json["gdaPathTha"] ?? "",
        rmFlag: json["rmFlag"] ?? "",
      );

  // Map<String, dynamic> toJson() => {
  //       "company": company ?? "",
  //       "productCode": productCode ?? "",
  //       "descTha": descTha ?? "",
  //       "descEng": descEng ?? "",
  //       "gtin13": gtin13 ?? "",
  //       "carbonFootprint": carbonFootprint ?? "",
  //       "carbonFootprintPer": carbonFootprintPer ?? "",
  //       "servingSize": servingSize ?? "",
  //       "calories": calories ?? "",
  //       "caloriesFromFat": caloriesFromFat ?? "",
  //       "certifiedMsgTha": certifiedMsgTha ?? "",
  //       "certifiedMsgEng": certifiedMsgEng ?? "",
  //       "sustainTextThai": sustainTextThai ?? "",
  //       "sustainTextEng": sustainTextEng ?? "",
  //       "groupForMenu": groupForMenu ?? "",
  //       "recommendMenu": recommendMenu ?? "",
  //       "productVdoTha": productVdoTha ?? "",
  //       "productVdoEng": productVdoEng ?? "",
  //       "onlineShopUrl": onlineShopUrl ?? "",
  //       "activeFlag": activeFlag ?? "",
  //       "nutritionUrl": nutritionUrl ?? "",
  //       "nutritionPathTha": nutritionPathTha ?? "",
  //       "nutritionPathEng": nutritionPathEng ?? "",
  //       "productImages": productImages ?? "",
  //       "productValues": productValues ?? "",
  //       "bannerPath": bannerPath ?? "",
  //       "bannerStr": bannerStr ?? "",
  //       "onlineShopTextTha": onlineShopTextTha ?? "",
  //       "onlineShopTextEng": onlineShopTextEng ?? "",
  //       "productSelectionEng": productSelectionEng ?? "",
  //       "productSelectionTha": productSelectionTha ?? "",
  //       "gdaPathEng": gdaPathEng ?? "",
  //       "gdaPathTha": gdaPathTha ?? "",
  //       "rmFlag": gdaPathTha ?? "",
  //     };
}
