/// textSnippet : "A stepwise multiple - regression computer program , which indicated the multiple correlation after the addition of each <b>item</b> was used ( Qureishi &amp; Lyon , 1961 ) . A maximum of 45 <b>items</b> was specified for selection by multiple regression&nbsp;..."

class SearchInfo {
  SearchInfo({
      this.textSnippet,});

  SearchInfo.fromJson(dynamic json) {
    textSnippet = json['textSnippet'];
  }
  String? textSnippet;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['textSnippet'] = textSnippet;
    return map;
  }

}