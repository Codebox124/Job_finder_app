import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../service/auth_service.dart';

// Mainly for dependcy injection
// To avoid creating unnecessary AuthService instances
final authProvider = Provider<AuthService>((ref) => AuthService());
