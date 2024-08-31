/// isAvailable : false
/// downloadLink : "http://books.google.com.eg/books/download/Prediction_of_Airman_Success_from_Respon.epub?id=ePD9iw75BdoC&hl=&output=epub&source=gbs_api"

class Epub {
  Epub({
      this.isAvailable, 
      this.downloadLink,});

  Epub.fromJson(dynamic json) {
    isAvailable = json['isAvailable'];
    downloadLink = json['downloadLink'];
  }
  bool? isAvailable;
  String? downloadLink;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['isAvailable'] = isAvailable;
    map['downloadLink'] = downloadLink;
    return map;
  }

}