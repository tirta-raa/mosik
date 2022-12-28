part of 'models.dart';

class Playlist {
  String title;
  List<Song> songs;
  String imageUrl;

  Playlist({
    required this.title,
    required this.songs,
    required this.imageUrl,
  });

  static List<Playlist> playlist = [
    Playlist(
      title: 'Asmalibrasi',
      songs: Song.songs,
      imageUrl:
          'https://beritajatim.com/wp-content/uploads/2022/09/Profil-Soegi-Bornean-Grup-Musik-yang-Dikenal-dengan-Lagu-Asmalibrasi.jpg',
    ),
    Playlist(
      title: 'Love Letter',
      songs: Song.songs,
      imageUrl:
          'https://ik.imagekit.io/uxbg5z0iq/image/upload/v1630733803/assets/songs/artwork/2021/love-letter-yoasobi.jpg?tr=h-500',
    ),
    Playlist(
      title: 'Encore',
      songs: Song.songs,
      imageUrl: 'https://i.ytimg.com/vi/4uRDdJm3p8k/maxresdefault.jpg',
    ),
  ];
}
