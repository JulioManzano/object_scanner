class User {
  int id;
  String name;
  String role;

  User({
    required this.id,
    required this.name,
    required this.role,
  });
}

enum RolUser {
  admin('ADM'),
  supervisor('WAR'),
  scanner('VEN'),
  normal('');

  final String role;

  const RolUser(this.role);

  static RolUser getRol(String role) {
    switch (role) {
      case 'ADM':
        return RolUser.admin;
      case 'WAR':
        return RolUser.supervisor;
      case 'VEN':
        return RolUser.scanner;
      default:
        return RolUser.normal;
    }
  }

  static String getRolName(String role) {
    switch (role) {
      case 'ADM':
        return "Administrador";
      case 'WAR':
        return "Supervisor";
      case 'VEN':
        return "Scanner";
      default:
        return "Sin Asignar";
    }
  }
}
