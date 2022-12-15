/// Created by Lovepreet Singh on 14/12/22.

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urban_match/apis/resource.dart';
import 'package:urban_match/ui/home_bloc/home_bloc.dart';
import 'package:urban_match/ui/home_page_item/home_page_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final HomeBloc _bloc = HomeBloc();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _bloc,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: BlocBuilder<HomeBloc, HomeState>(
            builder: (ctx, state){
              if((state as HomeInitial).response.status == ResourceStatus.success){
                return ListView.builder(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    primary: true,
                    itemCount: _bloc.repos.length,
                    itemBuilder: (ctx, index){
                      return HomePageItem(_bloc.repos[index]);
                    }
                );
              } else if(state.response.status == ResourceStatus.loading){
                return SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      CircularProgressIndicator(
                        color: Colors.black,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Text(
                          "Loading repos...",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              } else {
                return SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.error,
                        size: 100,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text(
                          state.response.message ?? "Some error occurred !",
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }
            },
          ),
        ),
      )
    );
  }
}
