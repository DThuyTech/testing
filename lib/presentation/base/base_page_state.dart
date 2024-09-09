import 'package:display_tracking/presentation/base/base_bloc/base_bloc.dart';
import 'package:display_tracking/presentation/app/bloc/app_bloc.dart';
import 'package:display_tracking/presentation/components/widget/widget.dart';
import 'package:display_tracking/presentation/exception_handler/exception_handler.dart';
import 'package:display_tracking/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'common/common_bloc.dart';

abstract class BasePageState<T extends StatefulWidget, B extends BaseBloc> extends BasePageStateDelegate<T, B> {}

abstract class BasePageStateDelegate<T extends StatefulWidget, B extends BaseBloc> extends State<T> implements ExceptionHandlerListener {
  late final appBloc = GetIt.instance.get<AppBloc>();
  late final exceptionHandler = ExceptionHandler(listener: this);

  late final commonBloc = GetIt.instance.get<CommonBloc>()
    ..appBloc = appBloc
    ..disposeBag = disposeBag
    ..exceptionHandler = exceptionHandler;

  late final bloc = GetIt.instance.get<B>()
    ..appBloc = appBloc
    ..commonBloc = commonBloc
    ..exceptionHandler = exceptionHandler
    ..disposeBag = disposeBag;

  late final disposeBag = DisposeBag();
  bool get isAppWidget => false;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => RepositoryProvider.of(context),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => bloc),
          BlocProvider(create: (_) => commonBloc),
        ],
        child: BlocListener<CommonBloc, CommonState>(
          listenWhen: (previous, current) => previous.appExceptionWrapper != current.appExceptionWrapper && current.appExceptionWrapper != null,
          listener: (context, state) {
            handleException(state.appExceptionWrapper!);
          },
          child: buildPageListeners(
            child: isAppWidget
                ? buildPage(context)
                : MaterialApp(
                    debugShowCheckedModeBanner: false,
                    home: Scaffold(
                      body: Stack(
                        alignment: Alignment.topLeft,
                        textDirection: TextDirection.ltr,
                        children: [
                          buildPage(context),
                          BlocBuilder<CommonBloc, CommonState>(
                            buildWhen: (previous, current) => previous.isLoading != current.isLoading,
                            builder: (context, state) {
                              return Visibility(
                                visible: state.isLoading,
                                child: buildPageLoading(),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
          ),
        ),
      ),
    );
  }

  Widget buildPageListeners({required Widget child}) => child;

  Widget buildPageLoading() => const ProgressDotsLoadingWidget();

  Widget buildPage(BuildContext context);

  void handleException(AppExceptionWrapper appExceptionWrapper) {
    exceptionHandler
        .handleException(
          appExceptionWrapper,
          handleExceptionMessage(appExceptionWrapper.appException),
        )
        .then((_) => appExceptionWrapper.exceptionCompleter?.complete());
  }

  String handleExceptionMessage(AppException appException) {
    return appException.appExceptionType.toString();
  }
}
