// ignore_for_file: lines_longer_than_80_chars

import 'package:chewie/chewie.dart';
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
          child: BlocBuilder<SpecificSeriesBloc, SpecificSeriesState>(
            builder: (context, state) => state.when(
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              error: () => const Center(
                child: Text('Ошибка при запросе серии'),
              ),
              success: (s) => SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                            left: Constants.mediumPadding,
                            right: Constants.mediumPadding,
                            top: Constants.mediumPadding,
                          ),
                          child: Column(
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
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 40,
                          child: ListView.separated(
                            padding: const EdgeInsets.symmetric(
                              horizontal: Constants.mediumPadding,
                            ),
                            physics: const BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: voiceIndex == index ? Theme.of(context).primaryColor : Colors.grey,
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
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                        left: Constants.mediumPadding,
                        right: Constants.mediumPadding,
                        bottom: Constants.mediumPadding,
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width / 16 * 9,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: _Video(
                          videoLink: s.videoLink,
                          primaryColor: Theme.of(context).primaryColor,
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
    required this.primaryColor,
  }) : super(key: key);

  final String videoLink;
  final Color primaryColor;

  @override
  State<_Video> createState() => _VideoState();
}

class _VideoState extends State<_Video> {
  var _isLoading = true;

  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();

    _videoPlayerController = VideoPlayerController.network(widget.videoLink);
    _videoPlayerController.initialize().then(
      (_) {
        _chewieController = ChewieController(
          videoPlayerController: _videoPlayerController,
          autoPlay: true,
          looping: false,
          autoInitialize: true,
          allowedScreenSleep: false,
          aspectRatio: 16 / 9,
          materialProgressColors: ChewieProgressColors(
            handleColor: widget.primaryColor,
            backgroundColor: Colors.white,
          ),
        );

        setState(() {
          _isLoading = false;
        });
      },
    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _isLoading
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : Chewie(
            controller: _chewieController,
          );
  }
}
