import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:mult_love/common/assets/constants.dart';
import 'package:mult_love/common/widgets/appbar.dart';
import 'package:mult_love/features/comics/bloc/comics_bloc.dart';
import 'package:mult_love/features/comics/data/models/comics_category.dart';
import 'package:mult_love/features/comics/di/comics_scope.dart';
import 'package:mult_love/features/main/data/models/serial.dart';

@RoutePage()
class ComicsPage extends StatelessWidget {
  const ComicsPage({
    Key? key,
    required this.serial,
  }) : super(key: key);

  final Serial serial;

  @override
  Widget build(BuildContext context) {
    return ComicsScope(
      serial: serial,
      widget: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: CustomAppBar(
            serial: serial,
            customTitle: '${serial.title} - Comics',
            showComicsButton: false,
          ),
        ),
        body: SafeArea(
          child: BlocBuilder<ComicsBloc, ComicsBlocState>(
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
                      comicsCategories: s,
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
    required this.comicsCategories,
  }) : super(key: key);

  final List<ComicsCategory> comicsCategories;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            // TODO:
          },
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: Constants.mediumPadding,
              vertical: Constants.smallPadding,
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    comicsCategories[index].imageUrl,
                    height: 100,
                  ),
                ),
                const SizedBox(
                  width: Constants.smallPadding,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        comicsCategories[index].title,
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
      itemCount: comicsCategories.length,
    );
  }
}
