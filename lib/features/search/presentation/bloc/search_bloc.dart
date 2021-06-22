import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/constants/text_constants.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/password_entity.dart';
import '../../domain/repositories/i_search_repository.dart';

part 'search_bloc.freezed.dart';
part 'search_event.dart';
part 'search_state.dart';

const PAGE_LIMIT = 100;

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final ISearchRepository searchRepository;

  SearchBloc({@required this.searchRepository})
      : super(const _SearchStateInitial());

  @override
  Stream<SearchState> mapEventToState(
    SearchEvent event,
  ) async* {
    yield* event.map(
      search: (e) async* {
        yield const SearchState.loading();

        final Either<Failure, List<PasswordEntity>> passwordsOrFailure =
            await searchRepository.searchPasswords(
                searchString: e.text ?? "", page: 0);

        yield* passwordsOrFailure.fold((failure) async* {
          yield SearchState.error(
              message: failure.message ?? cSomethingWentWrongMessage);
        }, (passwords) async* {
          yield SearchState.loaded(passwords: passwords);
        });
      },
      fetchNextPage: (e) async* {},
    );
  }
}
