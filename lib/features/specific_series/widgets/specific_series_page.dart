// ignore_for_file: lines_longer_than_80_chars
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:mult_love/common/assets/constants.dart';
import 'package:mult_love/features/specific_series/bloc/specific_series_bloc/specific_series_bloc.dart';
import 'package:mult_love/features/specific_series/di/specific_series_scope.dart';
import 'package:video_player/video_player.dart';

class SpecificSeriesPage extends StatefulWidget {
  const SpecificSeriesPage({
    Key? key,
    required this.url,
  }) : super(key: key);

  final String url;

  @override
  State<SpecificSeriesPage> createState() => _SpecificSeriesPageState();
}

class _SpecificSeriesPageState extends State<SpecificSeriesPage> {
  int voiceIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SpecificSeriesScope(
      url: widget.url,
      child: BlocBuilder<SpecificSeriesBloc, SpecificSeriesState>(
        builder: (context, state) => state.when(
          loading: () => const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          ),
          error: () => Scaffold(
            body: Center(
              child: Text(
                AppLocalizations.of(context).error_specific_series,
              ),
            ),
          ),
          success: (specificSeries) => Scaffold(
            appBar: AppBar(
              actions: [
                IconButton(
                  onPressed: () {
                    context.read<SpecificSeriesBloc>().add(
                          SpecificSeriesEvent.fetch(
                            url: specificSeries.serialLink + '/random.php',
                            isSubtitles: false,
                            subType: null,
                          ),
                        );
                  },
                  icon: const Icon(
                    Icons.shuffle,
                  ),
                ),
              ],
              title: Text(
                specificSeries.serialTitle,
              ),
            ),
            body: SafeArea(
              child: SingleChildScrollView(
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
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${specificSeries.seasonNumber} ${AppLocalizations.of(context).season} - ${specificSeries.seriesIndex} ${AppLocalizations.of(context).seria}',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              const SizedBox(
                                height: Constants.smallPadding,
                              ),
                              Text(
                                specificSeries.title,
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              const SizedBox(
                                height: Constants.mediumPadding,
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
                                backgroundColor: voiceIndex == index
                                    ? Theme.of(context).primaryColor
                                    : Colors.grey,
                              ),
                              onPressed: () {
                                setState(() {
                                  voiceIndex = index;
                                });

                                context.read<SpecificSeriesBloc>().add(
                                      SpecificSeriesEvent.fetch(
                                        url: specificSeries.serialLink +
                                            '/' +
                                            specificSeries.voices[index].link,
                                        isSubtitles:
                                            specificSeries.voices[index].isSub,
                                        subType: specificSeries
                                            .voices[index].subType,
                                      ),
                                    );
                              },
                              child: Text(specificSeries.voices[index].name),
                            ),
                            separatorBuilder: (_, __) => const SizedBox(
                              width: Constants.smallPadding,
                            ),
                            itemCount: specificSeries.voices.length,
                          ),
                        ),
                        const SizedBox(
                          height: Constants.mediumPadding,
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
                          videoLink: specificSeries.videoLink,
                          primaryColor: Theme.of(context).primaryColor,
                          subtitles: specificSeries.subtitles,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: Constants.mediumPadding,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppLocalizations.of(context).description,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          const SizedBox(
                            height: Constants.smallPadding,
                          ),
                          Html(
                            data: specificSeries.description,
                            style: {
                              '*': Style(
                                margin: EdgeInsets.zero,
                              ),
                            },
                          ),
                        ],
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
    required this.subtitles,
  }) : super(key: key);

  final String videoLink;
  final Color primaryColor;
  final List<Subtitle>? subtitles;

  @override
  State<_Video> createState() => _VideoState();
}

class _VideoState extends State<_Video> {
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;

  var _isLoading = true;

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
          showControlsOnInitialize: false,
          customControls: CupertinoControls(
            backgroundColor: Colors.white.withOpacity(.6),
            iconColor: widget.primaryColor,
            showPlayButton: true,
          ),
          cupertinoProgressColors: ChewieProgressColors(
            handleColor: widget.primaryColor,
            backgroundColor: widget.primaryColor.withAlpha(125),
            playedColor: widget.primaryColor,
            bufferedColor: widget.primaryColor.withAlpha(160),
          ),
          subtitle: widget.subtitles != null
              ? Subtitles(
                  widget.subtitles!,
                )
              : null,
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
