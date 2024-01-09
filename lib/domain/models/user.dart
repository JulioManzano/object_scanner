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
  admin(1),
  supervisor(2),
  scanner(3),
  normal(4);

  final int role;

  const RolUser(this.role);

  static RolUser getRol(int role){
    switch (role){
      case 1: return RolUser.admin;
      case 2: return RolUser.supervisor;
      case 3: return RolUser.scanner;
      default: return RolUser.normal;
    }
  }
  static String getRolName(int role){
    switch (role){
      case 1: return "Administrador";
      case 2: return "Supervisor";
      case 3: return "Scanner";
      default: return "Sin Asignar";
    }
  }
}
