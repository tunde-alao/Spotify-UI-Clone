import 'package:flutter/material.dart';
import 'package:spotify_clone/clone/spotify/spotify_data.dart';

class Spotify extends StatefulWidget {
  const Spotify({super.key});

  @override
  State<Spotify> createState() => _SpotifyState();
}

class _SpotifyState extends State<Spotify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTextStyle(
        style: TextStyle(color: Colors.white),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  HeaderSection(),
                  SizedBox(
                    height: 20,
                  ),
                  HighlightMusicSection(),
                  TrendingIconSection(),
                  SizedBox(
                    height: 20,
                  ),
                  RecentlyPlayedSection(),
                ],
              ),
            ),
            BottomTabSection(),
          ],
        ),
      ),
      backgroundColor: primaryColor,
    );
  }
}

class BottomTabSection extends StatelessWidget {
  const BottomTabSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Column(
        children: [
          playingSection(),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset("images/spotify/home.png"),
                Image.asset("images/spotify/search.png"),
                Image.asset("images/spotify/library.png"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget playingSection() {
    return Container(
      decoration: BoxDecoration(
        color: playingBgColor,
        borderRadius: BorderRadius.circular(6),
      ),
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 40,
            child: Row(
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: Image.network(songPlaying.imageUrl),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        songPlaying.name,
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        songPlaying.artistName,
                        style: TextStyle(
                          fontSize: 12,
                          color: grayTextColor,
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.pause,
                  color: Colors.white,
                  size: 30,
                )
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Container(
                color: Colors.white,
                height: 2,
                width: 200,
              ),
              Expanded(
                child: Container(
                  color: grayTextColor,
                  height: 2,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class RecentlyPlayedSection extends StatelessWidget {
  const RecentlyPlayedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Recently Played",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ...recentlyPlayedList.map((item) {
                  return Container(
                    margin: const EdgeInsets.only(right: 20),
                    child: Column(
                      children: [
                        Expanded(
                          child: AspectRatio(
                            aspectRatio: 1,
                            child: ClipOval(
                              child: Image.network(item.coverUrl),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          item.name,
                          style: TextStyle(
                            color: grayTextColor,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  );
                })
              ],
            ),
          )
        ],
      ),
    );
  }
}

class TrendingIconSection extends StatelessWidget {
  const TrendingIconSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 180,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Trending Albums",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ...trendingAlbumsForYou.map((album) {
                  return Container(
                    margin: const EdgeInsets.only(right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: AspectRatio(
                            aspectRatio: 1,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(6),
                              child: Image.network(album.coverUrl),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          album.name,
                          style: TextStyle(
                            color: grayTextColor,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  );
                })
              ],
            ),
          )
        ],
      ),
    );
  }
}

class HighlightMusicSection extends StatelessWidget {
  const HighlightMusicSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 230,
      child: GridView.count(
        physics: NeverScrollableScrollPhysics(),
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 3,
        crossAxisCount: 2,
        children: albums.map((album) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: secondaryColor,
            ),
            child: Row(
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: Image.network(
                    album.albumCoverURL,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Text(
                    album.artistName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            logoSection(),
            SizedBox(height: 10),
            tabSection(),
          ],
        ),
      ),
    );
  }

  Widget tabSection() {
    return Row(
      children: [
        tabItem('Music'),
        SizedBox(
          width: 10,
        ),
        tabItem('Podcasts & Shows'),
      ],
    );
  }

  Widget tabItem(String text) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 6,
        horizontal: 14,
      ),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 10,
        ),
      ),
    );
  }

  Row logoSection() {
    return Row(
      children: [
        Expanded(
          child: Text(
            "Good afternoon",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        Image.asset(
          "images/spotify/notification.png",
          height: 28,
        ),
        SizedBox(
          width: 10,
        ),
        Image.asset(
          "images/spotify/clock.png",
          height: 28,
        ),
        SizedBox(
          width: 10,
        ),
        Image.asset(
          "images/spotify/settings.png",
          height: 28,
        ),
      ],
    );
  }
}
