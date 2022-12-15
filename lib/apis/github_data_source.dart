import 'dart:convert';

import 'package:urban_match/apis/resource.dart';
import 'package:urban_match/models/last_commit/last_commit.dart';
import 'package:urban_match/models/repos/repos.dart';
import 'package:http/http.dart' as http;

/// Created by Lovepreet Singh on 14/12/22.


class GithubDataSource{

  // or we can use DI and use singleton
  static GithubDataSource instance = GithubDataSource();
  Map<String, LastCommit> lastCommitCache = {};

  //using http calls here, but can also use DIO with retrofit for a large application
  Future<Resource<List<Repos>>> getAllRepos() async{
    var response =  await http.get(
      Uri.parse('https://api.github.com/users/freeCodeCamp/repos'),
    );
    if(response.statusCode != 200){
      return Resource.error("Some error occurred, please try again later !");
    }
    List? body = jsonDecode(response.body) as List?;
    if(body == null){
      return Resource.error("No data");
    }
    return Resource.success(body.map((e) => Repos.fromJson(e)).toList());
  }

  Future<Resource<LastCommit>> getFirstCommitFromRepo(String repoName) async{
    if(lastCommitCache.containsKey(repoName)){
      return Resource.success(lastCommitCache[repoName]);
    }
    var response =  await http.get(
      Uri.parse('https://api.github.com/repos/freeCodeCamp/$repoName/commits'),
    );
    if(response.statusCode != 200){
      return Resource.error("Some error occurred, please try again later !");
    }
    List? body = jsonDecode(response.body) as List?;
    if(body == null){
      return Resource.error("No data");
    }
    lastCommitCache[repoName] = LastCommit.fromJson(body.first);
    return Resource.success(lastCommitCache[repoName]);
  }
}