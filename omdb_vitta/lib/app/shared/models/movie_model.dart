// To parse this JSON data, do
//
//     final movieModel = movieModelFromJson(jsonString);

import 'package:meta/meta.dart';

import 'rating_model.dart';
class MovieModel {
    MovieModel({
        @required this.title,
        @required this.year,
        @required this.rated,
        @required this.released,
        @required this.runtime,
        @required this.genre,
        @required this.director,
        @required this.writer,
        @required this.actors,
        @required this.plot,
        @required this.language,
        @required this.country,
        @required this.awards,
        @required this.poster,
        @required this.ratings,
        @required this.metascore,
        @required this.imdbRating,
        @required this.imdbVotes,
        @required this.imdbId,
        @required this.type,
        @required this.dvd,
        @required this.boxOffice,
        @required this.production,
        @required this.website,
        @required this.response,
    });

    final String title;
    final String year;
    final String rated;
    final String released;
    final String runtime;
    final String genre;
    final String director;
    final String writer;
    final String actors;
    final String plot;
    final String language;
    final String country;
    final String awards;
    final String poster;
    final List<RatingModel> ratings;
    final String metascore;
    final String imdbRating;
    final String imdbVotes;
    final String imdbId;
    final String type;
    final String dvd;
    final String boxOffice;
    final String production;
    final String website;
    final String response;

    MovieModel copyWith({
        String title,
        String year,
        String rated,
        String released,
        String runtime,
        String genre,
        String director,
        String writer,
        String actors,
        String plot,
        String language,
        String country,
        String awards,
        String poster,
        List<RatingModel> ratings,
        String metascore,
        String imdbRating,
        String imdbVotes,
        String imdbId,
        String type,
        String dvd,
        String boxOffice,
        String production,
        String website,
        String response,
    }) => 
        MovieModel(
            title: title ?? this.title,
            year: year ?? this.year,
            rated: rated ?? this.rated,
            released: released ?? this.released,
            runtime: runtime ?? this.runtime,
            genre: genre ?? this.genre,
            director: director ?? this.director,
            writer: writer ?? this.writer,
            actors: actors ?? this.actors,
            plot: plot ?? this.plot,
            language: language ?? this.language,
            country: country ?? this.country,
            awards: awards ?? this.awards,
            poster: poster ?? this.poster,
            ratings: ratings ?? this.ratings,
            metascore: metascore ?? this.metascore,
            imdbRating: imdbRating ?? this.imdbRating,
            imdbVotes: imdbVotes ?? this.imdbVotes,
            imdbId: imdbId ?? this.imdbId,
            type: type ?? this.type,
            dvd: dvd ?? this.dvd,
            boxOffice: boxOffice ?? this.boxOffice,
            production: production ?? this.production,
            website: website ?? this.website,
            response: response ?? this.response,
        );

    factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
        title: json["Title"] == null ? null : json["Title"],
        year: json["Year"] == null ? null : json["Year"],
        rated: json["Rated"] == null ? null : json["Rated"],
        released: json["Released"] == null ? null : json["Released"],
        runtime: json["Runtime"] == null ? null : json["Runtime"],
        genre: json["Genre"] == null ? null : json["Genre"],
        director: json["Director"] == null ? null : json["Director"],
        writer: json["Writer"] == null ? null : json["Writer"],
        actors: json["Actors"] == null ? null : json["Actors"],
        plot: json["Plot"] == null ? null : json["Plot"],
        language: json["Language"] == null ? null : json["Language"],
        country: json["Country"] == null ? null : json["Country"],
        awards: json["Awards"] == null ? null : json["Awards"],
        poster: json["Poster"] == null ? null : json["Poster"],
        ratings: json["Ratings"] == null ? null : List<RatingModel>.from(json["Ratings"].map((x) => RatingModel.fromJson(x))),
        metascore: json["Metascore"] == null ? null : json["Metascore"],
        imdbRating: json["imdbRating"] == null ? null : json["imdbRating"],
        imdbVotes: json["imdbVotes"] == null ? null : json["imdbVotes"],
        imdbId: json["imdbID"] == null ? null : json["imdbID"],
        type: json["Type"] == null ? null : json["Type"],
        dvd: json["DVD"] == null ? null : json["DVD"],
        boxOffice: json["BoxOffice"] == null ? null : json["BoxOffice"],
        production: json["Production"] == null ? null : json["Production"],
        website: json["Website"] == null ? null : json["Website"],
        response: json["Response"] == null ? null : json["Response"],
    );

    Map<String, dynamic> toJson() => {
        "Title": title == null ? null : title,
        "Year": year == null ? null : year,
        "Rated": rated == null ? null : rated,
        "Released": released == null ? null : released,
        "Runtime": runtime == null ? null : runtime,
        "Genre": genre == null ? null : genre,
        "Director": director == null ? null : director,
        "Writer": writer == null ? null : writer,
        "Actors": actors == null ? null : actors,
        "Plot": plot == null ? null : plot,
        "Language": language == null ? null : language,
        "Country": country == null ? null : country,
        "Awards": awards == null ? null : awards,
        "Poster": poster == null ? null : poster,
        "Ratings": ratings == null ? null : List<dynamic>.from(ratings.map((x) => x.toJson())),
        "Metascore": metascore == null ? null : metascore,
        "imdbRating": imdbRating == null ? null : imdbRating,
        "imdbVotes": imdbVotes == null ? null : imdbVotes,
        "imdbID": imdbId == null ? null : imdbId,
        "Type": type == null ? null : type,
        "DVD": dvd == null ? null : dvd,
        "BoxOffice": boxOffice == null ? null : boxOffice,
        "Production": production == null ? null : production,
        "Website": website == null ? null : website,
        "Response": response == null ? null : response,
    };

  @override
  String toString() {
    return 'MovieModel(title: $title, year: $year, image: $poster)';
  }
}
