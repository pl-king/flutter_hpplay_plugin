#import "FlutterPluginNewhpplayPlugin.h"
#if __has_include(<flutter_plugin_newhpplay/flutter_plugin_newhpplay-Swift.h>)
#import <flutter_plugin_newhpplay/flutter_plugin_newhpplay-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_plugin_newhpplay-Swift.h"
#endif

@implementation FlutterPluginNewhpplayPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterPluginNewhpplayPlugin registerWithRegistrar:registrar];
}
@end
