final String tablemovies = 'movies';

class MovieFields {
  static final List<String> values = [
    id,title, description, time, cover
  ];

  static final String id = '_id';
  static final String title = 'title';
  static final String description = 'description';
  static final String time = 'time';
  static final String cover = 'cover';
}

class Movie {
  final int? id;
  final String title;
  final String description;
  final DateTime createdTime;
  final String cover;

  const Movie({
    this.id,
    required this.title,
    required this.description,
    required this.createdTime,
    required this.cover
  });

  Movie copy({
    int? id,
    String? title,
    String? description,
    DateTime? createdTime,
    String? cover
  }) =>
      Movie(
        id: id ?? this.id,
        title: title ?? this.title,
        description: description ?? this.description,
        createdTime: createdTime ?? this.createdTime,
        cover: cover ?? this.cover
      );

  static Movie fromJson(Map<String, Object?> json) => Movie(
    id: json[MovieFields.id] as int?,
      title: json[MovieFields.title] as String,
    description: json[MovieFields.description] as String,
    createdTime: DateTime.parse(json[MovieFields.time] as String),
    cover: json[MovieFields.cover] as String
  );

  Map<String, Object?> toJson() => {
    MovieFields.id: id,
    MovieFields.title: title,
    MovieFields.description: description,
    MovieFields.time: createdTime.toIso8601String(),
    MovieFields.cover: cover
  };
}