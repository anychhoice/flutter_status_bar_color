#import "FlutterStatusBarColorPlugin.h"
#if __has_include(<flutter_status_bar_color/flutter_status_bar_color-Swift.h>)
#import <flutter_status_bar_color/flutter_status_bar_color-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_status_bar_color-Swift.h"
#endif

@implementation FlutterStatusBarColorPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterStatusBarColorPlugin registerWithRegistrar:registrar];
}
@end
