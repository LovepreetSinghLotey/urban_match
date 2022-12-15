import 'package:flutter/material.dart';
import 'package:urban_match/apis/github_data_source.dart';
import 'package:urban_match/apis/resource.dart';
import 'package:urban_match/models/last_commit/last_commit.dart';
import 'package:urban_match/models/repos/repos.dart';

/// Created by Lovepreet Singh on 14/12/22.

class HomePageItem extends StatefulWidget {
  final Repos repo;
  const HomePageItem(this.repo, {Key? key}) : super(key: key);

  @override
  State<HomePageItem> createState() => _HomePageItemState();
}

class _HomePageItemState extends State<HomePageItem> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Card(
        margin: const EdgeInsets.fromLTRB(16, 10, 16, 0),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(
                width: 1,
                color: Colors.cyan
            )
        ),
        elevation: 2,
        child: Container(
          padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.repo.name,
                style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                ),
              ),
              Visibility(
                visible: widget.repo.description != null,
                child: Padding(
                  padding: const EdgeInsets.only(top: 2.0),
                  child: Text(
                    widget.repo.description ?? "",
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              FutureBuilder<Resource<LastCommit>>(
                future: GithubDataSource.instance.getFirstCommitFromRepo(widget.repo.name),
                builder: (ctx, snapshot){
                  if(snapshot.hasData){
                    return Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.cyan.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          Text(
                            snapshot.data?.data?.commit.message ?? "",
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                  return Container();
                }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
