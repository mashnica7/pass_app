import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/ui/themes/colors.dart';
import '../../../../core/ui/widgets/animated_reload_error_indicator.dart';
import '../../../../injection/injection.dart';
import '../../../../routes/router.gr.dart';
import '../../../auth/presentation/bloc/auth/auth_bloc.dart';
import '../../domain/entities/password_entity.dart';
import '../bloc/search_bloc.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.maybeMap(
            unauthenticated: (_) => Future.delayed(
              const Duration(seconds: 1),
              () {
                ExtendedNavigator.of(context).replace(Routes.registerLoginPage);
              },
            ),
            orElse: () {},
          );
        },
        child: BlocProvider(
            create: (context) =>
                getIt<SearchBloc>()..add(const SearchEvent.search(text: "")),
            child: SearchPageBuilder()));
  }
}

class SearchPageBuilder extends StatelessWidget {
  final ScrollController scrollController = ScrollController();

  final TextEditingController textEditingController = TextEditingController();

  final GlobalKey globalKey = GlobalKey();

  SearchPageBuilder({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: NotificationListener<ScrollNotification>(
              onNotification: (notification) {
                if (notification is ScrollEndNotification &&
                    scrollController.position.extentAfter == 0) {
                  context.read<SearchBloc>().add(SearchEvent.fetchNextPage(
                      text: textEditingController.text));
                }
                return false;
              },
              child: CustomScrollView(
                controller: scrollController,
                slivers: <Widget>[
                  SliverAppBar(
                    backgroundColor: BACKGROUND_COLOR,
                    //If true, the AppBar floats as soon as the list is scrolled down, If False the AppBar doesn’t appear unless the top of the List appears.
                    floating: true,

                    flexibleSpace: appBarWidget(context),

                    // Make the initial height of the SliverAppBar larger than normal.
                    expandedHeight: 50,
                    bottom: PreferredSize(
                      child: Divider(
                        color: TITLE_COLOR,
                      ),
                      preferredSize: Size(2, 10),
                    ),
                  ),
                  CupertinoSliverRefreshControl(
                    onRefresh: () async {
                      context.read<SearchBloc>()
                        ..add(SearchEvent.search(
                            text: textEditingController.text));
                    },
                  ),
                  listWidget(context, state)
                ],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: RED_PRIMARY_COLOR,
            onPressed: () {
              context.read<AuthBloc>().add(const AuthEvent.signedOut());
            },
            child: const Icon(
              Icons.logout,
              color: SECOND_WHITE_COLOR,
            ),
          ),
        );
      },
    );
  }

  Widget appBarWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0, left: 8.0),
            child: Image.asset(
              "assets/images/logo.png",
              height: 32,
              width: 32,
            ),
          ),
          Text(
            'PASS APP',
            style: TextStyle(
                color: TITLE_COLOR,
                fontSize: 16.0,
                fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Padding(
              padding: const EdgeInsets.only(right: 8.0, left: 8.0),
              child: IconButton(
                  icon: Image.asset(
                    "assets/images/search.png",
                  ),
                  onPressed: () {})),
          Padding(
              padding: const EdgeInsets.only(right: 8.0, left: 8.0),
              child: IconButton(
                  icon: Image.asset(
                    "assets/images/menu.png",
                  ),
                  onPressed: () {})),
        ],
      ),
    );
    // return Padding(
    //   padding: const EdgeInsets.all(8.0),
    //   child: CupertinoTextField(
    //     padding: const EdgeInsets.all(10.0),
    //     key: globalKey,
    //     controller: textEditingController,
    //     onSubmitted: (text) {
    //       context
    //           .read<SearchBloc>()
    //           .add(SearchEvent.search(text: textEditingController.text));
    //     },
    //     keyboardType: TextInputType.text,
    //     placeholder: 'Search',
    //     autocorrect: false,
    //     placeholderStyle: const TextStyle(
    //       color: Color(0xffC4C6CC),
    //       fontSize: 14.0,
    //       fontFamily: 'Brutal',
    //     ),
    //     prefix: const Padding(
    //       padding: EdgeInsets.fromLTRB(9.0, 6.0, 9.0, 6.0),
    //       child: Icon(
    //         Icons.search,
    //         color: Color(0xffC4C6CC),
    //       ),
    //     ),
    //     decoration: BoxDecoration(
    //       borderRadius: BorderRadius.circular(8.0),
    //       color: const Color(0xffF0F1F5),
    //     ),
    //   ),
    // );
  }

  Widget textFieldWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CupertinoTextField(
        padding: const EdgeInsets.all(10.0),
        key: globalKey,
        controller: textEditingController,
        onSubmitted: (text) {
          context
              .read<SearchBloc>()
              .add(SearchEvent.search(text: textEditingController.text));
        },
        keyboardType: TextInputType.text,
        placeholder: 'Search',
        autocorrect: false,
        placeholderStyle: const TextStyle(
          color: Color(0xffC4C6CC),
          fontSize: 14.0,
          fontFamily: 'Brutal',
        ),
        prefix: const Padding(
          padding: EdgeInsets.fromLTRB(9.0, 6.0, 9.0, 6.0),
          child: Icon(
            Icons.search,
            color: Color(0xffC4C6CC),
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: const Color(0xffF0F1F5),
        ),
      ),
    );
  }

  Widget listWidget(BuildContext context, SearchState state) {
    return state.when(
        initial: () => _loadingWidget(),
        loading: () => _loadingWidget(),
        loaded: (passwords) => _sliverListWidget(
            passwords: passwords,
            totalNumberOfPassworeds: passwords.length,
            context: context),
        error: (message) => _errorWidget(context, message: message));
  }

  Widget _loadingWidget() => const SliverFillRemaining(
      child: Center(child: CircularProgressIndicator()));

  Widget _errorWidget(BuildContext context, {String message}) {
    return SliverFillRemaining(
      child: Column(children: [
        AnimatedReloadExceptionIndicator(
          title: "Ups...",
          heightFactor: 0.21,
          message: message,
          onTryAgain: () {
            context
                .read<SearchBloc>()
                .add(SearchEvent.search(text: textEditingController.text));
          },
        ),
      ]),
    );
  }

  Widget _buildLoaderListItem() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  SliverList _sliverListWidget(
      {List<PasswordEntity> passwords,
      int totalNumberOfPassworeds,
      BuildContext context}) {
    if (passwords.isEmpty) {
      return SliverList(
        delegate: SliverChildListDelegate(<Widget>[
          _emptyListPlaceholder(context),
        ]),
      );
    }
    final List<Widget> res = [];
    final int count = passwords.length == totalNumberOfPassworeds
        ? passwords.length
        : passwords.length + 1;
    for (int index = 0; index < count; index++) {
      if (index >= passwords.length) {
        res.add(_buildLoaderListItem());
      } else {
        res.add(Padding(
          key: UniqueKey(),
          padding: const EdgeInsets.all(8.0),
          child: Container(
            key: UniqueKey(),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: TEXT_FIELD_COLOR,
            ),
            child: ListTile(
              key: UniqueKey(),
              leading: Opacity(
                  opacity: 0.5,
                  child: Image.asset(
                    "assets/images/logo.png",
                    height: 32,
                    width: 32,
                  )),
              trailing: Image.asset(
                "assets/images/next.png",
              ),
              title: Text(
                passwords[index].password,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
        ));
      }
    }
    return SliverList(
      delegate: SliverChildListDelegate(<Widget>[
        ...res,
      ]),
    );
  }

  Widget _emptyListPlaceholder(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: Image.asset("assets/images/empty_list.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 4.0),
            child: Text(
              'Empty\npassword list',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 24),
            child: Text(
              'Add your first password\nby clicking the orange button',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
