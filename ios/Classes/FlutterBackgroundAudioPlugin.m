#import "FlutterBackgroundAudioPlugin.h"
#if __has_include(<flutter_background_audio/flutter_background_audio-Swift.h>)
#import <flutter_background_audio/flutter_background_audio-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_background_audio-Swift.h"
#endif

@implementation FlutterBackgroundAudioPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterBackgroundAudioPlugin registerWithRegistrar:registrar];
}
@end
