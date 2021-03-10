//
//  SwiftLibrary.m
//  SwiftFunctionFromReactNative
//
//  Created by Alexander Schad on 10.03.21.
//

#import <Foundation/Foundation.h>
#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(SwiftLibrary, NSObject)
RCT_EXTERN_METHOD(callBackMessage:(NSString *)message cb:(RCTResponseSenderBlock)callback)
RCT_EXTERN_METHOD(alertMessage:(NSString *)message)
RCT_EXTERN_METHOD(alertNameAge:(NSString)name withAge:(NSString)age)
RCT_EXTERN_METHOD(callBackNameAge:(NSString)name withAge:(NSString)age cb:(RCTResponseSenderBlock)callback)
@end
