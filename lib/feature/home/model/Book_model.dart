import 'VolumeInfo.dart';
import 'SaleInfo.dart';
import 'AccessInfo.dart';
import 'SearchInfo.dart';

/// kind : "books#volume"
/// id : "ePD9iw75BdoC"
/// etag : "Pjqkk8rpzHU"
/// selfLink : "https://www.googleapis.com/books/v1/volumes/ePD9iw75BdoC"
/// volumeInfo : {"title":"Prediction of Airman Success from Responses to Items of the Kelley Activity Preference Report","authors":["Benjamin Fruchter"],"publishedDate":"1962","industryIdentifiers":[{"type":"OTHER","identifier":"MINN:31951D03402121H"}],"readingModes":{"text":false,"image":true},"pageCount":5,"printType":"BOOK","categories":["Prediction of occupational success"],"maturityRating":"NOT_MATURE","allowAnonLogging":false,"contentVersion":"0.3.4.0.full.1","panelizationSummary":{"containsEpubBubbles":false,"containsImageBubbles":false},"imageLinks":{"smallThumbnail":"http://books.google.com/books/content?id=ePD9iw75BdoC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api","thumbnail":"http://books.google.com/books/content?id=ePD9iw75BdoC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api"},"language":"en","previewLink":"http://books.google.com.eg/books?id=ePD9iw75BdoC&pg=PA3&dq=items&hl=&cd=1&source=gbs_api","infoLink":"https://play.google.com/store/books/details?id=ePD9iw75BdoC&source=gbs_api","canonicalVolumeLink":"https://play.google.com/store/books/details?id=ePD9iw75BdoC"}
/// saleInfo : {"country":"EG","saleability":"FREE","isEbook":true,"buyLink":"https://play.google.com/store/books/details?id=ePD9iw75BdoC&rdid=book-ePD9iw75BdoC&rdot=1&source=gbs_api"}
/// accessInfo : {"country":"EG","viewability":"ALL_PAGES","embeddable":true,"publicDomain":true,"textToSpeechPermission":"ALLOWED","epub":{"isAvailable":false,"downloadLink":"http://books.google.com.eg/books/download/Prediction_of_Airman_Success_from_Respon.epub?id=ePD9iw75BdoC&hl=&output=epub&source=gbs_api"},"pdf":{"isAvailable":false},"webReaderLink":"http://play.google.com/books/reader?id=ePD9iw75BdoC&hl=&source=gbs_api","accessViewStatus":"FULL_PUBLIC_DOMAIN","quoteSharingAllowed":false}
/// searchInfo : {"textSnippet":"A stepwise multiple - regression computer program , which indicated the multiple correlation after the addition of each <b>item</b> was used ( Qureishi &amp; Lyon , 1961 ) . A maximum of 45 <b>items</b> was specified for selection by multiple regression&nbsp;..."}

class BookModel {
  BookModel({
      this.kind, 
      this.id, 
      this.etag, 
      this.selfLink, 
      this.volumeInfo,
      this.saleInfo, 
      this.accessInfo, 
      this.searchInfo,});

  BookModel.fromJson(dynamic json) {
    kind = json['kind'];
    id = json['id'];
    etag = json['etag'];
    selfLink = json['selfLink'];
    volumeInfo = json['volumeInfo'] != null ? VolumeInfo.fromJson(json['volumeInfo']) : null;
    saleInfo = json['saleInfo'] != null ? SaleInfo.fromJson(json['saleInfo']) : null;
    accessInfo = json['accessInfo'] != null ? AccessInfo.fromJson(json['accessInfo']) : null;
    searchInfo = json['searchInfo'] != null ? SearchInfo.fromJson(json['searchInfo']) : null;
  }
  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  VolumeInfo? volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;
  SearchInfo? searchInfo;
}