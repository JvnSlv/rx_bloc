import 'package:bloc_battle_base/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rx_bloc/flutter_rx_bloc.dart';
import 'package:rx_bloc/rx_bloc.dart';
import 'package:rx_bloc_sample/base/ui_components/error_widget.dart';
import 'package:rx_bloc_sample/base/ui_components/loading_widget.dart';
import 'package:rx_bloc_sample/feature_puppy/favorites/blocs/favorite_puppies_bloc.dart';
import 'package:rx_bloc_sample/feature_puppy/list/ui_components/puppy_animated_list_view.dart';

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Column(children: [
        Expanded(
          child: PuppyAnimatedListView(
            puppyList: RxBlocProvider.of<FavoritePuppiesBlocType>(context)
                .states
                .favoritePuppies
                .whereSuccess(),
          ),
        ),
        RxResultBuilder<FavoritePuppiesBlocType, List<Puppy>>(
          state: (bloc) => bloc.states.favoritePuppies,
          buildLoading: (ctx, bloc) => LoadingWidget(),
          buildError: (ctx, error, bloc) => ErrorRetryWidget(
            onReloadTap: () => RxBlocProvider.of<FavoritePuppiesBlocType>(ctx)
                .events
                .reloadFavoritePuppies(silently: false),
          ),
          buildSuccess: (ctx, snapshot, bloc) => Container(),
        )
      ]);
}
