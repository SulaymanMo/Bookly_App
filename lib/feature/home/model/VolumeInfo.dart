import 'IndustryIdentifiers.dart';
import 'ReadingModes.dart';
import 'PanelizationSummary.dart';
import 'ImageLinks.dart';

/// title : "Prediction of Airman Success from Responses to Items of the Kelley Activity Preference Report"
/// authors : ["Benjamin Fruchter"]
/// publishedDate : "1962"
/// industryIdentifiers : [{"type":"OTHER","identifier":"MINN:31951D03402121H"}]
/// readingModes : {"text":false,"image":true}
/// pageCount : 5
/// printType : "BOOK"
/// categories : ["Prediction of occupational success"]
/// maturityRating : "NOT_MATURE"
/// allowAnonLogging : false
/// contentVersion : "0.3.4.0.full.1"
/// panelizationSummary : {"containsEpubBubbles":false,"containsImageBubbles":false}
/// imageLinks : {"smallThumbnail":"http://books.google.com/books/content?id=ePD9iw75BdoC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api","thumbnail":"http://books.google.com/books/content?id=ePD9iw75BdoC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"}
/// language : "en"
/// previewLink : "http://books.google.com.eg/books?id=ePD9iw75BdoC&pg=PA3&dq=items&hl=&cd=1&source=gbs_api"
/// infoLink : "https://play.google.com/store/books/details?id=ePD9iw75BdoC&source=gbs_api"
/// canonicalVolumeLink : "https://play.google.com/store/books/details?id=ePD9iw75BdoC"

class VolumeInfo {
  VolumeInfo({
    this.title,
    this.authors,
    this.publishedDate,
    this.industryIdentifiers,
    this.readingModes,
    this.pageCount,
    this.printType,
    this.categories,
    this.maturityRating,
    this.allowAnonLogging,
    this.contentVersion,
    this.panelizationSummary,
    this.imageLinks,
    this.language,
    this.previewLink,
    this.infoLink,
    this.canonicalVolumeLink,
    this.averageRating,
    this.ratingsCount,
  });

  VolumeInfo.fromJson(dynamic json) {
    title = json['title'];
    authors = json['authors'] != null ? json['authors'].cast<String>() : [];
    publishedDate = json['publishedDate'];
    if (json['industryIdentifiers'] != null) {
      industryIdentifiers = [];
      json['industryIdentifiers'].forEach((v) {
        industryIdentifiers?.add(IndustryIdentifiers.fromJson(v));
      });
    }
    readingModes = json['readingModes'] != null
        ? ReadingModes.fromJson(json['readingModes'])
        : null;
    pageCount = json['pageCount'];
    averageRating = json['averageRating'];
    ratingsCount = json['ratingsCount'];
    printType = json['printType'];
    categories =
        json['categories'] != null ? json['categories'].cast<String>() : [];
    maturityRating = json['maturityRating'];
    allowAnonLogging = json['allowAnonLogging'];
    contentVersion = json['contentVersion'];
    panelizationSummary = json['panelizationSummary'] != null
        ? PanelizationSummary.fromJson(json['panelizationSummary'])
        : null;
    imageLinks = json['imageLinks'] != null
        ? ImageLinks.fromJson(json['imageLinks'])
        : null;
    language = json['language'];
    previewLink = json['previewLink'];
    infoLink = json['infoLink'];
    canonicalVolumeLink = json['canonicalVolumeLink'];
  }

  String? title;
  List<String>? authors;
  String? publishedDate;
  List<IndustryIdentifiers>? industryIdentifiers;
  ReadingModes? readingModes;
  int? pageCount;
  String? printType;
  List<String>? categories;
  String? maturityRating;
  bool? allowAnonLogging;
  String? contentVersion;
  PanelizationSummary? panelizationSummary;
  ImageLinks? imageLinks;
  String? language;
  String? previewLink;
  String? infoLink;
  String? canonicalVolumeLink;
  num? averageRating;
  num? ratingsCount;
}
