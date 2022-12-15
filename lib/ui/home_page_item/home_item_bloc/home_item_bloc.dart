import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:urban_match/apis/github_data_source.dart';
import 'package:urban_match/models/last_commit/last_commit.dart';

part 'home_item_event.dart';
part 'home_item_state.dart';

class HomeItemBloc extends Bloc<HomeItemEvent, HomeItemState> {

  LastCommit? lastCommit;

  HomeItemBloc() : super(HomeItemInitial()) {
    on<HomeItemEvent>((event, emit) {

    });
  }

  void _getLastCommit(event, emit) async{
    emit();
    var response = await GithubDataSource.instance.getFirstCommitFromRepo(event.repoName);
    emit();
  }
}
