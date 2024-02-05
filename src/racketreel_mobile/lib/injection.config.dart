// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'app_config.dart' as _i5;
import 'create_match/data/i_match_creator_service.dart' as _i3;
import 'create_match/data/match_creator_service.dart' as _i4;
import 'create_match/presentation/bloc/create_match_cubit.dart' as _i16;
import 'feed/data/feed_item_repository.dart' as _i18;
import 'feed/domain/i_feed_item_repository.dart' as _i17;
import 'feed/presentation/bloc/feed_bloc.dart' as _i22;
import 'match/data/i_state_history_data_source.dart' as _i8;
import 'match/data/match_state_repository.dart' as _i20;
import 'match/data/state_history_data_source.dart' as _i9;
import 'match/data/summary_repository.dart' as _i13;
import 'match/domain/i_match_state_repository.dart' as _i19;
import 'match/domain/i_summary_repository.dart' as _i12;
import 'match/presentation/bloc/match_bloc.dart' as _i21;
import 'scoring/data/i_scoring_service.dart' as _i6;
import 'scoring/data/scoring_service.dart' as _i7;
import 'scoring/presentation/bloc/scoring_bloc.dart' as _i14;
import 'shared/data/i_summary_data_source.dart' as _i10;
import 'shared/data/summary_data_source.dart' as _i11;
import 'video_scoring/presentation/bloc/video_scoring_bloc.dart'
    as _i15; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.IMatchCreatorService>(
      () => _i4.MatchCreatorService(config: get<_i5.AppConfig>()));
  gh.factory<_i6.IScoringService>(
      () => _i7.ScoringService(config: get<_i5.AppConfig>()));
  gh.factory<_i8.IStateHistoryDataSource>(
      () => _i9.StateHistoryDataSource(config: get<_i5.AppConfig>()));
  gh.factory<_i10.ISummaryDataSource>(
      () => _i11.SummaryDataSource(config: get<_i5.AppConfig>()));
  gh.factory<_i12.ISummaryRepository>(
      () => _i13.SummaryRepository(dataSource: get<_i10.ISummaryDataSource>()));
  gh.factory<_i14.ScoringBloc>(
      () => _i14.ScoringBloc(get<_i6.IScoringService>()));
  gh.factory<_i15.VideoScoringBloc>(() => _i15.VideoScoringBloc());
  gh.factory<_i16.CreateMatchFormatCubit>(
      () => _i16.CreateMatchFormatCubit(get<_i3.IMatchCreatorService>()));
  gh.factory<_i17.IFeedItemRepository>(() =>
      _i18.FeedItemRepository(dataSource: get<_i10.ISummaryDataSource>()));
  gh.factory<_i19.IMatchStateRepository>(() => _i20.MatchStateRepository(
      dataSource: get<_i8.IStateHistoryDataSource>()));
  gh.factory<_i21.MatchBloc>(() => _i21.MatchBloc(
        get<_i19.IMatchStateRepository>(),
        get<_i12.ISummaryRepository>(),
      ));
  gh.factory<_i22.FeedBloc>(
      () => _i22.FeedBloc(get<_i17.IFeedItemRepository>()));
  return get;
}
