import 'package:flutter/material.dart';

class MovieFormWidget extends StatelessWidget {
  final int? number;
  final String? title;
  final String? description;
  final String? cover;
  final ValueChanged<String> onChangedTitle;
  final ValueChanged<String> onChangedDescription;
  final ValueChanged<String> onChangedCover;

  const MovieFormWidget({
    Key? key,
    this.number = 0,
    this.title = '',
    this.description = '',
    this.cover = '',
    required this.onChangedTitle,
    required this.onChangedDescription,
    required this.onChangedCover
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          buildTitle(),
          const SizedBox(height: 8),
          buildCover(),
          const SizedBox(height: 8),
          buildDescription(),
          const SizedBox(height: 16),
        ],
      ),
    ),
  );

  Widget buildTitle() => TextFormField(
    maxLines: 1,
    initialValue: title,
    style: const TextStyle(
      color: Colors.white70,
      fontWeight: FontWeight.bold,
      fontSize: 24,
    ),
    decoration: const InputDecoration(
      border: InputBorder.none,
      hintText: 'Title',
      hintStyle: TextStyle(color: Colors.white70),
    ),
    validator: (title) =>
    title != null && title.isEmpty ? 'The title cannot be empty' : null,
    onChanged: onChangedTitle,
  );

  Widget buildDescription() => TextFormField(
    maxLines: 5,
    initialValue: description,
    style: const TextStyle(color: Colors.white60, fontSize: 18),
    decoration: const InputDecoration(
      border: InputBorder.none,
      hintText: 'Type something...',
      hintStyle: TextStyle(color: Colors.white60),
    ),
    validator: (title) => title != null && title.isEmpty
        ? 'The description cannot be empty'
        : null,
    onChanged: onChangedDescription,
  );
  Widget buildCover() => TextFormField(
    maxLines: 1,
    initialValue: cover,
    style: const TextStyle(
      color: Colors.white70,
      fontWeight: FontWeight.bold,
      fontSize: 12,
    ),
    decoration: const InputDecoration(
      border: InputBorder.none,
      hintText: 'Cover url',
      hintStyle: TextStyle(color: Colors.white70),
    ),
    validator: (cover) =>
    cover != null && cover.isEmpty ? 'The cover cannot be empty' : null,
    onChanged: onChangedCover,
  );

}
