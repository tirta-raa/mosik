part of 'models.dart';

class Song {
  String title;
  String description;
  String url;
  String coverUrl;

  Song({
    this.title = "",
    this.description = "",
    this.url = "",
    this.coverUrl = "",
  });

  static List<Song> songs = [
    Song(
      title: 'Asmalibrasi',
      description: 'Soegi Bornean',
      url: 'assets/music/Soegi Bornean - Asmalibrasi.mp3',
      coverUrl:
          'https://beritajatim.com/wp-content/uploads/2022/09/Profil-Soegi-Bornean-Grup-Musik-yang-Dikenal-dengan-Lagu-Asmalibrasi.jpg',
    ),
    Song(
      title: 'Love Letter',
      description: 'Yoasobi',
      url: 'assets/music/yoasobi - love letter.mp3',
      coverUrl:
          'https://ik.imagekit.io/uxbg5z0iq/image/upload/v1630733803/assets/songs/artwork/2021/love-letter-yoasobi.jpg?tr=h-500',
    ),
    Song(
      title: 'Encore',
      description: 'Yoasobi',
      url: 'assets/music/yoasobi - encore.mp3',
      coverUrl: 'https://i.ytimg.com/vi/4uRDdJm3p8k/maxresdefault.jpg',
    ),
  ];
}
