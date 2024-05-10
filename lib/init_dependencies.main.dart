part of 'init_dependencies.dart';

final servicesLocator = GetIt.instance;

Future<void> initDependencies() async {
  _initAuth();
  _initBlog();
  final supabase = await Supabase.initialize(
    url: AppSecrets.supabaseUrl,
    anonKey: AppSecrets.supabaseAnonKey,
  );

  Hive.defaultDirectory = (await getApplicationDocumentsDirectory()).path;

  servicesLocator.registerLazySingleton(
    () => Hive.box(name: 'blogs'),
  );

  servicesLocator.registerLazySingleton(() => supabase.client);

  servicesLocator.registerFactory(() => InternetConnection());

  // core
  servicesLocator.registerLazySingleton(() => AppUserCubit());
  servicesLocator.registerFactory<ConnectionChecker>(
    () => ConnectionCheckerImpl(
      servicesLocator(),
    ),
  );
}

void _initAuth() {
  // DataSource
  servicesLocator
    ..registerFactory<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImpl(
        servicesLocator(),
      ),
    )
    // Repository
    ..registerFactory<AuthRepository>(
      () => AuthRepositoryImpl(
        servicesLocator(),
        servicesLocator(),
      ),
    )
    // UseCase
    ..registerFactory(
      () => UserSignUp(
        servicesLocator(),
      ),
    )
    ..registerFactory(
      () => UserLogin(
        servicesLocator(),
      ),
    )
    ..registerFactory(
      () => CurrentUser(
        servicesLocator(),
      ),
    )
    ..registerFactory(
      () => UserSignOut(
        servicesLocator(),
      ),
    )
    ..registerLazySingleton(
      () => AuthBloc(
        userSignUp: servicesLocator(),
        userLogin: servicesLocator(),
        currentUser: servicesLocator(),
        appUserCubit: servicesLocator(),
        userSignOut: servicesLocator(),
      ),
    );
}

void _initBlog() {
  // Datasource
  servicesLocator
    ..registerFactory<BlogRemoteDataSource>(
      () => BlogRemoteDataSourceImpl(
        servicesLocator(),
      ),
    )
    ..registerFactory<BlogLocalDataSource>(
      () => BlogLocalDataSourceImpl(
        servicesLocator(),
      ),
    )
    // Repository
    ..registerFactory<BlogRepository>(
      () => BlogRepositoryImpl(
        servicesLocator(),
        servicesLocator(),
        servicesLocator(),
      ),
    )
    // Usecase
    ..registerFactory(
      () => UploadBlog(
        servicesLocator(),
      ),
    )
    ..registerFactory(
      () => GetAllBlogs(
        servicesLocator(),
      ),
    )
    // Bloc
    ..registerLazySingleton(
      () => BlogBloc(
        uploadBlog: servicesLocator(),
        getAllBlogs: servicesLocator(),
      ),
    );
}
