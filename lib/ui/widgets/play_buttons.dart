part of 'widgets.dart';

class PlayButtons extends StatelessWidget {
  const PlayButtons({
    Key? key,
    required this.audioPlayer,
  }) : super(key: key);

  final AudioPlayer audioPlayer;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // preveios song button
        // using listen to SequenceState because we want to know whether we have
        // song that we plyaed before or songs we can play after the current song
        StreamBuilder<SequenceState?>(
            stream: audioPlayer.sequenceStateStream,
            builder: (context, snapshot) {
              return IconButton(
                onPressed:
                    audioPlayer.hasPrevious ? audioPlayer.seekToPrevious : null,
                iconSize: 45,
                icon: const Icon(
                  Icons.skip_previous,
                  color: Colors.white,
                ),
              );
            }),

        // this button for stop or playing music
        StreamBuilder(
          stream: audioPlayer.playerStateStream,
          builder: (context, snapshot) {
            // if  there are data we save them inside the playerStae Variable
            if (snapshot.hasData) {
              final playerState = snapshot.data;
              final processingState =
                  (playerState! as PlayerState).processingState;

              // if data (music) loading or buffering return circular progres indicator
              if (processingState == ProcessingState.loading ||
                  processingState == ProcessingState.buffering) {
                return Container(
                  width: 64,
                  height: 64,
                  margin: const EdgeInsets.all(10),
                  child: const CircularProgressIndicator(),
                );

                // if music not playing return play button
              } else if (!audioPlayer.playing) {
                return IconButton(
                  onPressed: audioPlayer.play,
                  iconSize: 75,
                  icon: const Icon(
                    Icons.play_circle,
                    color: Colors.white,
                  ),
                );

                // if whether the processing state is not equal to completed
                // which mean the song is still playing and its not over yet return the pause button
              } else if (processingState != ProcessingState.completed) {
                return IconButton(
                  onPressed: audioPlayer.pause,
                  iconSize: 75,
                  icon: const Icon(
                    Icons.pause_circle,
                    color: Colors.white,
                  ),
                );
              }
              // if music has end return replay or you can seek what ever you want
              else {
                return IconButton(
                  onPressed: () => audioPlayer.seek(
                    Duration.zero,
                    index: audioPlayer.effectiveIndices!.first,
                  ),
                  iconSize: 75,
                  icon: const Icon(
                    Icons.replay_circle_filled_outlined,
                    color: Colors.white,
                  ),
                );
              }

              // if no data return circular progres indicator
            } else {
              return const CircularProgressIndicator();
            }
          },
        ),

        // skip next button
        // using listen to SequenceState because we want to know whether we have
        // song that we plyaed before or songs we can play after the current song
        StreamBuilder<SequenceState?>(
            stream: audioPlayer.sequenceStateStream,
            builder: (context, snapshot) {
              return IconButton(
                onPressed: audioPlayer.hasNext ? audioPlayer.seekToNext : null,
                iconSize: 45,
                icon: const Icon(
                  Icons.skip_next,
                  color: Colors.white,
                ),
              );
            }),
      ],
    );
  }
}
