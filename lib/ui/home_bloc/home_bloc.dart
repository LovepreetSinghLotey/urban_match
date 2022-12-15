import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:urban_match/apis/github_data_source.dart';
import 'package:urban_match/apis/resource.dart';
import 'package:urban_match/models/repos/repos.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {

  List<Repos> repos = [];

  HomeBloc() : super(HomeInitial(Resource.notLoading())) {
    on<GetAllRepos>(_getAllRepos);
    add(GetAllRepos());
  }

  void _getAllRepos(event, emit) async{
    emit(HomeInitial(Resource.loading()));
    var response = await GithubDataSource.instance.getAllRepos();
    repos = response.data ?? [];
    emit(HomeInitial(response));
  }
}
