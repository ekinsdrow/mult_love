import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mult_love/common/assets/constants.dart';
import 'package:mult_love/common/widgets/appbar.dart';
import 'package:mult_love/features/comics_category/bloc/comics_category_bloc.dart';
import 'package:mult_love/features/comics_category/data/models/comics.dart';
import 'package:mult_love/features/comics_category/di/comics_category_scope.dart';
import 'package:mult_love/features/main/data/models/serial.dart';

@RoutePage()
class ComicsCategoryPage extends StatelessWidget {
  const ComicsCategoryPage({
    Key? key,
    required this.serial,
    required this.url,
    required this.categoryTitle,
  }) : super(key: key);

  final Serial serial;
  final String categoryTitle;
  final String url;

  @override
  Widget build(BuildContext context) {
    return ComicsCategoryScope(
      url: url,
      serialUrl: serial.link,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: CustomAppBar(
            serial: serial,
            customTitle: '${serial.title} - $categoryTitle',
            showComicsButton: false,
          ),
        ),
        body: SafeArea(
          child: BlocBuilder<ComicsCategoryBloc, ComicsCategoryState>(
            builder: (context, state) => state.when(
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              error: () => Center(
                child: Text(
                  AppLocalizations.of(context)!.error_comics_list,
                ),
              ),
              success: (s) => s.isNotEmpty
                  ? _BodyList(
                      comicses: s,
                      serial: serial,
                    )
                  : Center(
                      child: Text(
                        AppLocalizations.of(context)!.error_comics_list,
                      ),
                    ),
            ),
          ),
        ),
      ),
    );
  }
}

class _BodyList extends StatelessWidget {
  const _BodyList({
    Key? key,
    required this.comicses,
    required this.serial,
  }) : super(key: key);

  final List<Comics> comicses;
  final Serial serial;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: Constants.smallPadding,
        mainAxisSpacing: Constants.smallPadding,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: Constants.mediumPadding,
        vertical: Constants.smallPadding,
      ),
      itemBuilder: (context, index) {
        return Stack(
          children: [
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  comicses[index].imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned.fill(
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    // TODO:
                  },
                ),
              ),
            ),
          ],
        );
      },
      itemCount: comicses.length,
    );
  }
}
