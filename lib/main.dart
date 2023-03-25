import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_wm_ble_com/components/home/home_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setPreferredOrientations();
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}

const int appFirmwareVersion = 2;
const String appFirmwarePath = "assets/firmware/app.otap";

class App extends ConsumerWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch the current theme and rebuild on change
    return MaterialApp(
        home: const HomeView(),
        debugShowCheckedModeBanner: false,
        theme: FlexThemeData.light(
          scheme: FlexScheme.blumineBlue,
          surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
          blendLevel: 9,
          subThemesData: const FlexSubThemesData(
            blendOnLevel: 10,
            blendOnColors: false,
            inputDecoratorBorderType: FlexInputBorderType.underline,
            inputDecoratorRadius: 1.0,
            cardRadius: 0.0,
          ),
          visualDensity: FlexColorScheme.comfortablePlatformDensity,
          useMaterial3: true,
          swapLegacyOnMaterial3: true,
          // To use the playground font, add GoogleFonts package and uncomment
          // fontFamily: GoogleFonts.notoSans().fontFamily,
        ),
        darkTheme: FlexThemeData.dark(
          scheme: FlexScheme.blumineBlue,
          surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
          blendLevel: 15,
          subThemesData: const FlexSubThemesData(
            blendOnLevel: 20,
            inputDecoratorBorderType: FlexInputBorderType.underline,
            inputDecoratorRadius: 1.0,
            cardRadius: 0.0,
          ),
          visualDensity: FlexColorScheme.comfortablePlatformDensity,
          useMaterial3: true,
          swapLegacyOnMaterial3: true,
          // To use the Playground font, add GoogleFonts package and uncomment
          // fontFamily: GoogleFonts.notoSans().fontFamily,
        ),
        themeMode: ThemeMode.light);
  }
}

Future<void> setPreferredOrientations() {
  return SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    // DeviceOrientation.landscapeRight,
    // DeviceOrientation.landscapeLeft,
  ]);
}
