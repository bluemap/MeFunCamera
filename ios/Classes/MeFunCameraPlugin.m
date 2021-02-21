#import "MeFunCameraPlugin.h"
#if __has_include(<MeFunCamera/MeFunCamera-Swift.h>)
#import <MeFunCamera/MeFunCamera-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "MeFunCamera-Swift.h"
#endif

@implementation MeFunCameraPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftMeFunCameraPlugin registerWithRegistrar:registrar];
}
@end
