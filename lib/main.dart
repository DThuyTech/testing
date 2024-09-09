import 'package:display_tracking/di/di.dart';
import 'package:display_tracking/presentation/base/base_page_state.dart';
import 'package:display_tracking/presentation/navigation/routes/app_router.dart';
import 'package:display_tracking/presentation/app/bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:display_tracking/resource/language_constant.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

   @override
  State<MyApp> createState() => _MyAppState();
  static void setLocale(BuildContext context, Locale newLocale) {
    _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    state?.setLocale(newLocale);
  }

  
}

class _MyAppState extends BasePageState<MyApp, AppBloc> {
  final appRouterGetIt = getIt<AppRouter>();



  @override
  void didChangeDependencies() {
    getLocale().then((locale) => {setLocale(locale)});
    super.didChangeDependencies();
  }

  setLocale(Locale locale) {
    setState(() {
    });
  }
  @override
  void initState() {
    bloc.add(AppInitiated());
    super.initState();
  }

  @override
  Widget buildPage(BuildContext context) {
    final appRouterGetIt = getIt<AppRouter>();
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: appRouterGetIt.config(),
        );
      },
    );
  }
}
