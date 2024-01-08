import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Instagram extends StatefulWidget {
  const Instagram({super.key});

  @override
  State<Instagram> createState() => _InstagramState();
}

class _InstagramState extends State<Instagram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        InstagramAppBar(),
        SizedBox(
          height: 10,
        ),
        Story(),
        Expanded(
          child: PostSection(),
        )
      ]),
    );
  }
}

class InstagramAppBar extends StatelessWidget {
  const InstagramAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        height: 40,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Expanded(
              child: Image.asset(
                "images/instagram_logo.png",
                alignment: Alignment.topLeft,
              ),
            ),
            FaIcon(FontAwesomeIcons.heart),
            SizedBox(
              width: 20,
            ),
            Image.asset(
              "images/messenger_logo.jpg",
              width: 20,
              alignment: Alignment.topLeft,
            ),
          ],
        ),
      ),
    );
  }
}

class Story extends StatelessWidget {
  const Story({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 20),
        height: 90,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            StoryItem(
              name: 'Your Story',
              profilePic:
                  'https://cdn.inflact.com/media/371738307_308528385092864_6524318792182593925_n.jpg?url=https%3A%2F%2Fscontent.cdninstagram.com%2Fv%2Ft51.2885-19%2F371738307_308528385092864_6524318792182593925_n.jpg%3Fstp%3Ddst-jpg_s150x150%26_nc_ht%3Dinstagram.faly1-2.fna.fbcdn.net%26_nc_cat%3D108%26_nc_ohc%3DqgCnLQx5Q28AX9UwByy%26edm%3DAOQ1c0wBAAAA%26ccb%3D7-5%26oh%3D00_AfD_BElZA4NQY6r5rZUP6UJlYBqN9zqpNuQAjPv8I8lmWg%26oe%3D6590BDEA%26_nc_sid%3D8b3546&time=1703613600&key=28737d6276fae258f33bc8335a122bb3',
            ),
            StoryItem(
              name: 'Nasa',
              profilePic:
                  'https://cdn.inflact.com/media/29090066_159271188110124_1152068159029641216_n.jpg?url=https%3A%2F%2Fscontent.cdninstagram.com%2Fv%2Ft51.2885-19%2F29090066_159271188110124_1152068159029641216_n.jpg%3Fstp%3Ddst-jpg_s150x150%26_nc_ht%3Dinstagram.fclj1-2.fna.fbcdn.net%26_nc_cat%3D1%26_nc_ohc%3DXNh5AaRjmCoAX9p9kPw%26edm%3DAOQ1c0wBAAAA%26ccb%3D7-5%26oh%3D00_AfB1-QPUIvzYx1pLw8pB5zNHnKw-S-XICbCy4mw4PbWURQ%26oe%3D6590AEE9%26_nc_sid%3D8b3546&time=1703613600&key=b3fcdabcea7beb8b2adfabcc1e67898d',
            ),
            StoryItem(
              name: 'itstundeanthony',
              profilePic:
                  'https://cdn.inflact.com/media/371738307_308528385092864_6524318792182593925_n.jpg?url=https%3A%2F%2Fscontent.cdninstagram.com%2Fv%2Ft51.2885-19%2F371738307_308528385092864_6524318792182593925_n.jpg%3Fstp%3Ddst-jpg_s150x150%26_nc_ht%3Dinstagram.faly1-2.fna.fbcdn.net%26_nc_cat%3D108%26_nc_ohc%3DqgCnLQx5Q28AX9UwByy%26edm%3DAOQ1c0wBAAAA%26ccb%3D7-5%26oh%3D00_AfD_BElZA4NQY6r5rZUP6UJlYBqN9zqpNuQAjPv8I8lmWg%26oe%3D6590BDEA%26_nc_sid%3D8b3546&time=1703613600&key=28737d6276fae258f33bc8335a122bb3',
            ),
            StoryItem(
                name: 'joerogan',
                profilePic:
                    'https://cdn.inflact.com/media/16110531_1843500009241396_2021247012913020928_a.jpg?url=https%3A%2F%2Fscontent.cdninstagram.com%2Fv%2Ft51.2885-19%2F16110531_1843500009241396_2021247012913020928_a.jpg%3Fstp%3Ddst-jpg_s150x150%26_nc_ht%3Dinstagram.fdur5-1.fna.fbcdn.net%26_nc_cat%3D1%26_nc_ohc%3D1lCWbG6q7iEAX9WIvMN%26edm%3DAOQ1c0wBAAAA%26ccb%3D7-5%26oh%3D00_AfA4S7XU7ELa8cQCNSNO6kktrwGHSSlutPt-2UDDlWQ9Mg%26oe%3D658FFA5F%26_nc_sid%3D8b3546&time=1703613600&key=702463eb88d93ed5c535de8f07aa5744'),
            StoryItem(
                name: 'landonn.tv',
                profilePic:
                    'https://cdn.inflact.com/media/412105899_1470631270181954_2583876779618158554_n.jpg?url=https%3A%2F%2Fscontent.cdninstagram.com%2Fv%2Ft51.2885-19%2F412105899_1470631270181954_2583876779618158554_n.jpg%3Fstp%3Ddst-jpg_s150x150%26_nc_ht%3Dinstagram.faae2-3.fna.fbcdn.net%26_nc_cat%3D102%26_nc_ohc%3D7Tg5I_AIsA0AX8PvhfS%26edm%3DAOQ1c0wBAAAA%26ccb%3D7-5%26oh%3D00_AfDRCHxkktil3v-J0b76cDdNeLSrEHKve1t0XVWLMnVpKQ%26oe%3D65909729%26_nc_sid%3D8b3546&time=1703613600&key=80f3d2e6f87d8b34360c1f38eeeb9696'),
          ],
        ));
  }
}

class StoryItem extends StatelessWidget {
  final String name;
  final String profilePic;

  const StoryItem({
    super.key,
    required this.name,
    required this.profilePic,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(
                  color: Color(0xFFFB01CF),
                  width: 2,
                )),
            child: Center(
              child: ClipOval(
                child: Image.network(
                  profilePic,
                  width: 60,
                  height: 60,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: TextStyle(fontSize: 10),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class PostSection extends StatelessWidget {
  const PostSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        PostItem(
          image:
              "https://t4.ftcdn.net/jpg/04/30/46/87/360_F_430468753_hjeCITV6815pAztrEiOyElhwCao4v6XS.jpg",
          profilePicUrl:
              'https://cdn.inflact.com/media/29090066_159271188110124_1152068159029641216_n.jpg?url=https%3A%2F%2Fscontent.cdninstagram.com%2Fv%2Ft51.2885-19%2F29090066_159271188110124_1152068159029641216_n.jpg%3Fstp%3Ddst-jpg_s150x150%26_nc_ht%3Dinstagram.fclj1-2.fna.fbcdn.net%26_nc_cat%3D1%26_nc_ohc%3DXNh5AaRjmCoAX9p9kPw%26edm%3DAOQ1c0wBAAAA%26ccb%3D7-5%26oh%3D00_AfB1-QPUIvzYx1pLw8pB5zNHnKw-S-XICbCy4mw4PbWURQ%26oe%3D6590AEE9%26_nc_sid%3D8b3546&time=1703613600&key=b3fcdabcea7beb8b2adfabcc1e67898d',
          profileName: 'Nasa',
        ),
      ],
    );
  }
}

class PostItem extends StatelessWidget {
  final String image;
  final String profilePicUrl;
  final String profileName;

  const PostItem({
    super.key,
    required this.image,
    required this.profilePicUrl,
    required this.profileName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
          child: Row(
            children: [
              ClipOval(
                child: Image.network(
                  profilePicUrl,
                  width: 30,
                  height: 30,
                ),
              ),
              Expanded(
                child: Text(
                  profileName,
                ),
              ),
              Icon(
                Icons.more_horiz,
              )
            ],
          ),
        ),
        Image.network(
          image,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
          child: Row(
            children: [
              FaIcon(
                FontAwesomeIcons.heart,
                size: 18,
              ),
              SizedBox(
                width: 20,
              ),
              FaIcon(
                FontAwesomeIcons.comment,
                size: 18,
              ),
              SizedBox(
                width: 20,
              ),
              FaIcon(
                FontAwesomeIcons.paperPlane,
                size: 18,
              ),
              Expanded(
                child: Container(),
              ),
              FaIcon(
                FontAwesomeIcons.bookmark,
                size: 18,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            "320,840 likes",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
          child: Row(
            children: [
              Text(
                profileName,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 4,
              ),
              Expanded(
                child: Text("Stunning lake"),
              )
            ],
          ),
        )
      ],
    );
  }
}
