part of 'pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Song> songs = Song.songs;
  List<Playlist> playlist = Playlist.playlist;

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
        child: Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const CusttomAppBar(),
                  const _DiscoverMusic(),
                  _TrendingMusic(songs: songs),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        SectionHeader(
                          title: 'Playlist',
                        ),
                        Column(
                          children: playlist
                              .map(
                                (e) => Padding(
                                  padding: EdgeInsets.only(
                                      top: (e == playlist.first) ? 20 : 0,
                                      bottom: 10),
                                  child: PlaylistCard(playlist: e),
                                ),
                              )
                              .toList(),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

class _TrendingMusic extends StatelessWidget {
  const _TrendingMusic({
    Key? key,
    required this.songs,
  }) : super(key: key);

  final List<Song> songs;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SectionHeader(
              title: 'Trending Music',
            ),
          ),
          20.heightBox,
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.27,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: songs
                    .map(
                      (e) => Padding(
                        padding: EdgeInsets.only(
                          left: (e == songs.first) ? 20 : 0,
                          right: 20,
                        ),
                        child: SongCard(song: e),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _DiscoverMusic extends StatelessWidget {
  const _DiscoverMusic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          30.heightBox,
          Text(
            'Welcome',
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(color: Colors.white),
          ),
          5.heightBox,
          Text(
            'Enjoy yout favorite music',
            style: Theme.of(context).textTheme.headline6?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
          ),
          20.heightBox,
          TextFormField(
            decoration: InputDecoration(
              isDense: true,
              filled: true,
              fillColor: Colors.white,
              hintText: 'Search',
              hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.grey.shade400,
                  ),
              prefixIcon: Icon(Icons.search, color: Colors.grey.shade400),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
