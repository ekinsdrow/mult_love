import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mult_love/common/assets/constants.dart';
import 'package:mult_love/common/widgets/appbar.dart';
import 'package:mult_love/features/comics_read/bloc/comics_read_bloc.dart';
import 'package:mult_love/features/comics_read/data/models/comics_page.dart';
import 'package:mult_love/features/comics_read/di/comics_read_scope.dart';
import 'package:mult_love/features/main/data/models/serial.dart';

@RoutePage()
class ComicsReadPage extends StatelessWidget {
  const ComicsReadPage({
    Key? key,
    required this.serial,
    required this.url,
  }) : super(key: key);

  final Serial serial;
  final String url;

  @override
  Widget build(BuildContext context) {
    return ComicsReadScope(
      serial: serial,
      url: url,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: CustomAppBar(
            serial: serial,
          ),
        ),
        body: SafeArea(
          child: BlocBuilder<ComicsReadBloc, ComicsReadState>(
            builder: (context, state) => state.when(
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              error: () => Center(
                child: Text(
                  AppLocalizations.of(context)!.error_comics_list,
                ),
              ),
              success: (page) => _Body(
                comicsPage: page,
                serial: serial,
                url: url,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _Body extends StatefulWidget {
  const _Body({
    Key? key,
    required this.comicsPage,
    required this.serial,
    required this.url,
  }) : super(key: key);

  final ComicsModelPage comicsPage;
  final Serial serial;
  final String url;

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  int _currentPage = 0;
  bool _isInitial = true;

  void _getPage({
    required BuildContext context,
    required int page,
  }) {
    setState(() {
      _currentPage = page;
      _isInitial = false;
    });

    context.read<ComicsReadBloc>().add(
          ComicsReadEvent.nextPage(
            number: page + 1,
            url: widget.url,
            serialUrl: widget.serial.link,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return ComicsReadScope(
      serial: widget.serial,
      url: widget.url,
      child: Column(
        children: [
          SizedBox(
            height: 80,
            child: ListView.separated(
              padding: const EdgeInsets.all(Constants.smallPadding),
              separatorBuilder: (_, __) => const SizedBox(
                width: Constants.smallPadding,
              ),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: _currentPage == index
                      ? Theme.of(context).primaryColor
                      : Colors.grey[500],
                ),
                onPressed: () {
                  _getPage(
                    page: index,
                    context: context,
                  );
                },
                child: Text(
                  '${index + 1}',
                ),
              ),
              itemCount: widget.comicsPage.pageCount,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(
                Constants.smallPadding,
              ),
              child: _isInitial
                  ? InteractiveViewer(
                      child: Image.network(
                        widget.comicsPage.currentImage.imageUrl,
                      ),
                    )
                  : BlocBuilder<ComicsReadBloc, ComicsReadState>(
                      builder: (context, state) => state.when(
                        loading: () => const Center(
                          child: CircularProgressIndicator(),
                        ),
                        error: () => Center(
                          child: Text(
                            AppLocalizations.of(context)!.error_comics_list,
                          ),
                        ),
                        success: (page) => InteractiveViewer(
                          child: Image.network(
                            page.currentImage.imageUrl,
                          ),
                        ),
                      ),
                    ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(
              Constants.smallPadding,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Builder(
                    builder: (context) {
                      return ElevatedButton(
                        onPressed: _currentPage == 0
                            ? null
                            : () {
                                _getPage(
                                    page: --_currentPage, context: context);
                              },
                        child: Text(
                          AppLocalizations.of(context)!.previous,
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  width: Constants.smallPadding,
                ),
                Expanded(
                  child: Builder(
                    builder: (context) {
                      return ElevatedButton(
                        onPressed:
                            _currentPage == widget.comicsPage.pageCount - 1
                                ? null
                                : () {
                                    _getPage(
                                      page: ++_currentPage,
                                      context: context,
                                    );
                                  },
                        child: Text(
                          AppLocalizations.of(context)!.next,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
