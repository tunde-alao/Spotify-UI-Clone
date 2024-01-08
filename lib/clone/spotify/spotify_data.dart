import 'package:flutter/material.dart';

class Album {
  String artistName;
  String albumCoverURL;

  Album({
    required this.artistName,
    required this.albumCoverURL,
  });
}

class SpotifyCoverName {
  String name;
  String coverUrl;
  String? subtitle;

  SpotifyCoverName({
    required this.name,
    required this.coverUrl,
    this.subtitle,
  });
}

class SongPlaying {
  String name;
  String artistName;
  String imageUrl;

  SongPlaying({
    required this.name,
    required this.artistName,
    required this.imageUrl,
  });
}

List<Album> albums = [
  Album(
      artistName: "Fela Kuti",
      albumCoverURL:
          "https://thisis-images.spotifycdn.com/37i9dQZF1DZ06evO3jkmmg-default.jpg"),
  Album(
      artistName: "Asake",
      albumCoverURL:
          "https://i.scdn.co/image/ab67616d00001e021ee6732ccb8f07bd15b33beb"),
  Album(
      artistName: "Jungle",
      albumCoverURL:
          "https://i.scdn.co/image/ab67616d00001e0277619f14cb03e11baf5761d1"),
  Album(
      artistName: "Omah Lay",
      albumCoverURL:
          "https://i.scdn.co/image/ab67616d00001e021a7b39db17f0668f05c18713"),
  Album(
      artistName: "Joe Rogan",
      albumCoverURL:
          "https://i.scdn.co/image/ab67706c0000da84aa0ef189c137c5d66ae1c322"),
  Album(
      artistName: "Central Cee",
      albumCoverURL:
          "https://i.scdn.co/image/ab67616d00001e02e3a09a9ae3f1fa102c110e60"),
];

List<SpotifyCoverName> trendingAlbumsForYou = [
  SpotifyCoverName(
      name: "I Told Them",
      subtitle: 'Burna Boy',
      coverUrl:
          "https://i.scdn.co/image/ab67616d00001e0239550ce4ccf28a1a4b82a443"),
  SpotifyCoverName(
      name: "Timeless",
      subtitle: 'Davido',
      coverUrl:
          "https://i.scdn.co/image/ab67616d00001e02adfc1ac5836f96adac580271"),
  SpotifyCoverName(
      name: "PSYCHODRAMA",
      subtitle: 'Dave',
      coverUrl:
          "https://i.scdn.co/image/ab67616d00001e02c1c8d2889455db6d03d309ed"),
];

List<SpotifyCoverName> recentlyPlayedList = [
  SpotifyCoverName(
      name: "Liked Songs",
      coverUrl: "https://misc.scdn.co/liked-songs/liked-songs-640.png"),
  SpotifyCoverName(
      name: "Your Top Songs 2023",
      coverUrl:
          "https://wrapped-images.spotifycdn.com/image/yts-2023/default/your-top-songs-2023_DEFAULT_en.jpg"),
  SpotifyCoverName(
      name: "Rich Flex",
      coverUrl:
          "https://i.scdn.co/image/ab67616d00001e0202854a7060fccc1a66a4b5ad"),
  SpotifyCoverName(
      name: "Sleep With Me",
      coverUrl:
          "https://i.scdn.co/image/ab67656300005f1f2a0c54d973bf20a6d55c9813"),
];

SongPlaying songPlaying = SongPlaying(
  name: "Soso",
  artistName: "Omah Lay",
  imageUrl: "https://i.scdn.co/image/ab67616d00001e0254b6c54e83c4154c974c1059",
);

Color primaryColor = Color(0xFF111111);
Color secondaryColor = Color(0xFF292929);
Color playingBgColor = Color(0xFF464012);
Color grayTextColor = Color(0xFF9B9B9B);
