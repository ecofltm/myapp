import 'package:flutter/material.dart';
import '../widgets/post_card.dart';
 
class NewsFeedScreen extends StatelessWidget {
  const NewsFeedScreen({super.key});
 
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        PostCard(profileImageUrl: 'https://w0.peakpx.com/wallpaper/357/667/HD-wallpaper-ghost-profile.jpg', userName: 'Cherish Sarmiento', postContent: 'hellooo', postDate: 'December 12, 2024', postImage: 'assets/images/hello.jpg'),
        PostCard(profileImageUrl: 'https://image.kpopmap.com/2019/01/ive-jang-wonyoung-profile.jpg', userName: 'Jang Wonyoung', postContent: 'Ka-VOUGE!', postDate: 'December 12, 2024', postImage: 'assets/images/wonyoungpost.jpg'),
        PostCard(profileImageUrl: 'https://kpopping.com/documents/d9/4/social-widget/Kim-Minju-facePicture(1).webp?v=de2b5', userName: 'Kim Minju', postContent: 'School gurl!', postDate: 'December 12, 2024', postImage: 'assets/images/minju.jpg'),
        PostCard(profileImageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVA60ESg4-8avcQ38qZIc5ga6hwnRKAYgjKA&s', userName: 'An Yujin', postContent: 'MC day <3', postDate: 'December 12, 2024', postImage: 'assets/images/yujin.png'),
        PostCard(profileImageUrl: 'https://i.mydramalist.com/2wmn2w_5f.jpg', userName: 'Jo Yuri', postContent: 'Squid Game 2', postDate: 'December 12, 2024', postImage: 'assets/images/yuri.jpg'),
        PostCard(profileImageUrl: 'https://static.wikia.nocookie.net/love-talk/images/3/37/Le-sserafim-kim-chae-won-source-music-girl-group-2022.jpg/revision/latest/scale-to-width-down/2000?cb=20230307142319', userName: 'Kim Chaewon', postContent: 'Eyyyy', postDate: 'December 7, 2024', postImage: 'assets/images/chaewon.jpg'),
        PostCard(profileImageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAHkW3dHqTa1HvGVjLgcXpU4bmD7J7L0hrYQ&s', userName: 'Na Jaemin', postContent: 'Nyang Nyang ~~', postDate: 'December 12, 2024', postImage: 'assets/images/jaemin.jpg'),
        PostCard(profileImageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtuVf3my0581I76vHoZYsh6u4niylavTfbmA&s', userName: 'Sunjae-ya', postContent: 'Pogi ko', postDate: 'December 12, 2024', postImage: 'assets/images/sunjae.jpg'),
        PostCard(profileImageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2Bmrx2mHSyLg7WuGqzAvDIV8LF7VauFaF7w&s', userName: 'Mark Lee', postContent: 'onyourMark', postDate: 'December 12, 2024', postImage: 'assets/images/marklee.jpg'),
      ],
    );
  }
}
