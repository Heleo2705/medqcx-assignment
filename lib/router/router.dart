import 'package:auto_route/auto_route.dart';
import 'package:medqcx/router/router.gr.dart';

import '../presentation/camera_screen.dart';
import '../presentation/img_preview.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  MaterialRoute(page: ImgPreview),
  MaterialRoute(page: CameraScreen, initial: true),
])
class $AppRouter {}

final appRouter = AppRouter();
