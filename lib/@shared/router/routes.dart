enum AppRoutes {
  splash(name: 'splash', path: '/'),
  login(name: 'login', path: '/login'),
  home(name: 'home', path: '/home');

  final String name;
  final String path;

  const AppRoutes({required this.name, required this.path});
}
