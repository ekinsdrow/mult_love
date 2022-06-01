import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mult_love/common/assets/constants.dart';
import 'package:mult_love/features/main/data/models/serial.dart';
import 'package:mult_love/features/seasons/data/models/season.dart';
import 'package:mult_love/features/series/data/models/series.dart';
import 'package:mult_love/features/specific_series/bloc/specific_series_bloc/specific_series_bloc.dart';
import 'package:mult_love/features/specific_series/di/specific_series_scope.dart';
import 'package:video_player/video_player.dart';

class SpecificSeriesPage extends StatefulWidget {
  const SpecificSeriesPage({
    Key? key,
    required this.season,
    required this.serial,
    required this.series,
    required this.seriesIndex,
  }) : super(key: key);

  final Serial serial;
  final Season season;
  final Series series;
  final String seriesIndex;

  @override
  State<SpecificSeriesPage> createState() => _SpecificSeriesPageState();
}

class _SpecificSeriesPageState extends State<SpecificSeriesPage> {
  int voiceIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SpecificSeriesScope(
      series: widget.series,
      serial: widget.serial,
      child: Scaffold(
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(
              Constants.mediumPadding,
            ),
            child: BlocBuilder<SpecificSeriesBloc, SpecificSeriesState>(
              builder: (context, state) => state.when(
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                error: () => const Center(
                  child: Text('Ошибка при запросе серии'),
                ),
                success: (s) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.serial.title,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    const SizedBox(
                      height: Constants.smallPadding,
                    ),
                    Text(
                      '${widget.season.number} сезон - ${widget.seriesIndex} серия',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    const SizedBox(
                      height: Constants.smallPadding,
                    ),
                    Text(
                      s.title,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    const SizedBox(
                      height: Constants.bigPadding,
                    ),
                    SizedBox(
                      height: 40,
                      child: ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: voiceIndex == index
                                ? Theme.of(context).progressIndicatorTheme.color
                                : Colors.grey,
                          ),
                          onPressed: () {
                            setState(() {
                              voiceIndex = index;
                            });

                            context.read<SpecificSeriesBloc>().add(
                                  SpecificSeriesEvent.fetch(
                                    series: widget.series,
                                    serial: widget.serial,
                                    link: s.voices[index].link,
                                  ),
                                );
                          },
                          child: Text(s.voices[index].name),
                        ),
                        separatorBuilder: (_, __) => const SizedBox(
                          width: Constants.smallPadding,
                        ),
                        itemCount: s.voices.length,
                      ),
                    ),
                    const SizedBox(
                      height: Constants.bigPadding,
                    ),
                    AspectRatio(
                      aspectRatio: 16 / 9,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: _Video(
                          videoLink: s.videoLink,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _Video extends StatefulWidget {
  const _Video({
    Key? key,
    required this.videoLink,
  }) : super(key: key);

  final String videoLink;

  @override
  State<_Video> createState() => _VideoState();
}

class _VideoState extends State<_Video> {
  late VideoPlayerController _controller;

  Future<void> _initController(
    String url,
  ) async {
    _controller = VideoPlayerController.network(url);
    await _controller.initialize();

    _controller.play();
    return;
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initController(widget.videoLink),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return GestureDetector(
            onTap: () {
              if (_controller.value.isPlaying) {
                _controller.pause();
              } else {
                _controller.play();
              }
            },
            child: Stack(
              children: [
                Positioned.fill(
                  child: VideoPlayer(
                    _controller,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: Container(
                    height: 70,
                    width: MediaQuery.of(context).size.width -
                        Constants.mediumPadding * 2,
                    color: Colors.black38,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: Constants.smallPadding,
                      ),
                      child: ValueListenableBuilder<VideoPlayerValue>(
                          valueListenable: _controller,
                          builder: (context, value, child) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  splashRadius: 20,
                                  onPressed: () {},
                                  icon: Icon(
                                    value.isPlaying
                                        ? Icons.pause
                                        : Icons.play_arrow,
                                  ),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width -
                                      Constants.mediumPadding * 2 -
                                      130,
                                  child: ProgressBar(
                                    progress: value.position,
                                    onSeek: (duration) {
                                      _controller.seekTo(duration);
                                    },
                                    total: value.duration,
                                  ),
                                ),
                                IconButton(
                                  splashRadius: 20,
                                  onPressed: () {
                                    //TODO: fullscreen
                                  },
                                  icon: const Icon(
                                    Icons.fullscreen,
                                  ),
                                ),
                              ],
                            );
                          }),
                    ),
                  ),
                )
              ],
            ),
          );
        }

        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
