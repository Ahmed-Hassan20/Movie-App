/// adult : false
/// backdrop_path : "/t5zCBSB5xMDKcDqe91qahCOUYVV.jpg"
/// genre_ids : [27,9648]
/// id : 507089
/// original_language : "en"
/// original_title : "Five Nights at Freddy's"
/// overview : "Recently fired and desperate for work, a troubled young man named Mike agrees to take a position as a night security guard at an abandoned theme restaurant: Freddy Fazbear's Pizzeria. But he soon discovers that nothing at Freddy's is what it seems."
/// popularity : 5378.969
/// poster_path : "/j9mH1pr3IahtraTWxVEMANmPSGR.jpg"
/// release_date : "2023-10-25"
/// title : "Five Nights at Freddy's"
/// video : false
/// vote_average : 8.377
/// vote_count : 1308

class MoviesDetails {
  MoviesDetails({
      this.adult, 
      this.backdropPath, 
      this.genreIds, 
      this.id, 
      this.originalLanguage, 
      this.originalTitle, 
      this.overview, 
      this.popularity, 
      this.posterPath, 
      this.releaseDate, 
      this.title, 
      this.video, 
      this.voteAverage, 
      this.voteCount,});

  MoviesDetails.fromJson(dynamic json) {
    adult = json['adult'];
    backdropPath = json['backdrop_path'];
    genreIds = json['genre_ids'] != null ? json['genre_ids'].cast<int>() : [];
    id = json['id'];
    originalLanguage = json['original_language'];
    originalTitle = json['original_title'];
    overview = json['overview'];
    popularity = json['popularity'];
    posterPath = json['poster_path'];
    releaseDate = json['release_date'];
    title = json['title'];
    video = json['video'];
    voteAverage = json['vote_average'];
    voteCount = json['vote_count'];
  }
  bool? adult;
  String? backdropPath;
  List<dynamic>? genreIds;
  dynamic? id;
  String? originalLanguage;
  String? originalTitle;
  String? overview;
  dynamic? popularity;
  String? posterPath;
  String? releaseDate;
  String? title;
  bool? video;
  dynamic? voteAverage;
  dynamic? voteCount;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['adult'] = adult;
    map['backdrop_path'] = backdropPath;
    map['genre_ids'] = genreIds;
    map['id'] = id;
    map['original_language'] = originalLanguage;
    map['original_title'] = originalTitle;
    map['overview'] = overview;
    map['popularity'] = popularity;
    map['poster_path'] = posterPath;
    map['release_date'] = releaseDate;
    map['title'] = title;
    map['video'] = video;
    map['vote_average'] = voteAverage;
    map['vote_count'] = voteCount;
    return map;
  }

}