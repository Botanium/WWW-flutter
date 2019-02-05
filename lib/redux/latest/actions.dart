import 'package:meta/meta.dart';
import 'package:what_when_where/db_chgk_info/models/tournament.dart';

abstract class LatestTournamentsAction {}

@immutable
class RefreshLatestTournaments extends LatestTournamentsAction {
  @override
  String toString() => '$RefreshLatestTournaments ';
}

@immutable
class LoadMoreLatestTournaments extends LatestTournamentsAction {
  @override
  String toString() => '$LoadMoreLatestTournaments ';
}

@immutable
class LatestTournamentsIsLoadingMore extends LatestTournamentsAction {
  @override
  String toString() => '$LatestTournamentsIsLoadingMore ';
}

@immutable
class MoreLatestTournamentsLoaded extends LatestTournamentsAction {
  final Iterable<Tournament> data;

  MoreLatestTournamentsLoaded(this.data);

  @override
  String toString() =>
      '$MoreLatestTournamentsLoaded data.length = "${data.length}"';
}

@immutable
class ClearLatestTournaments extends LatestTournamentsAction {
  @override
  String toString() => '$ClearLatestTournaments ';
}

@immutable
class LatestTournamentsIsRefreshing extends LatestTournamentsAction {
  @override
  String toString() => '$LatestTournamentsIsRefreshing ';
}

@immutable
class LatestTournamentsLoadFailed extends LatestTournamentsAction {
  final Exception exception;

  LatestTournamentsLoadFailed(this.exception);

  @override
  String toString() =>
      '$LatestTournamentsLoadFailed exception.runtimeType = "${exception.runtimeType}"';
}
