import 'package:auto_route/auto_route.dart';
import 'package:medqcx/presentation/screens/device_detail.dart';
import 'package:medqcx/router/router.gr.dart';

import '../presentation/screens/home.dart';
import '../presentation/screens/profile.dart';
import '../presentation/screens/schedule.dart';

// part 'router.gr.dart';

final appRouter = AppRouter();

@MaterialAutoRouter(
  replaceInRouteName: 'Screen',
  routes: [
    MaterialRoute(page: HomeScreen, initial: true),
    MaterialRoute(page: ScheduleScreen),
    MaterialRoute(page: ProfileScreen),
    MaterialRoute(page: DeviceDetailScreen),
  ],
)
class $AppRouter {}
