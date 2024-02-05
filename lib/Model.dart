class Model {
  int chapterNumber =0;
  String chapterSummary = '';
  String chapterSummaryHindi  = '';
  int id =0;
  String imageName = '';
  String name = '';
  String nameMeaning = '';
  String nameTranslation = '';
  String nameTransliterated = '';
  int versesCount =0;

  Model(
      {required this.chapterNumber,
        required this.chapterSummary,
        required this.chapterSummaryHindi,
        required this.id,
        required this.imageName,
        required this.name,
        required this.nameMeaning,
        required this.nameTranslation,
        required this.nameTransliterated,
        required this.versesCount});

  Model.fromJson(Map<String, dynamic> json) {
    chapterNumber = json['chapter_number'];
    chapterSummary = json['chapter_summary'];
    chapterSummaryHindi = json['chapter_summary_hindi'];
    id = json['id'];
    imageName = json['image_name'];
    name = json['name'];
    nameMeaning = json['name_meaning'];
    nameTranslation = json['name_translation'];
    nameTransliterated = json['name_transliterated'];
    versesCount = json['verses_count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['chapter_number'] = this.chapterNumber;
    data['chapter_summary'] = this.chapterSummary;
    data['chapter_summary_hindi'] = this.chapterSummaryHindi;
    data['id'] = this.id;
    data['image_name'] = this.imageName;
    data['name'] = this.name;
    data['name_meaning'] = this.nameMeaning;
    data['name_translation'] = this.nameTranslation;
    data['name_transliterated'] = this.nameTransliterated;
    data['verses_count'] = this.versesCount;
    return data;
  }

  @override
  String toString() {
    return '{chapter_number: $chapterNumber, chapter_summary: $chapterSummary, chapter_summary_hindi: $chapterSummaryHindi,id: $id,image_name: $imageName,name:$name,name_meaning: $nameMeaning,name_translation: $nameTranslation,name_transliterated: $nameTransliterated,verses_count:$versesCount}';
  }
  static List<Model> parseList(List value) {
    List<Model> listdata = value.map((e) => Model.fromJson(e)).toList();
    return listdata;
  }
}