//
//  PushNative.h
//  ReactNativeJumpToNativePage
//
//  Created by wenzhan on 2018/8/22.
//  Copyright © 2018年 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
// 导入RCTBridgeModule类，这个是react-native提供
#import <React/RCTBridgeModule.h>
// 遵守RCTBridgeModul协议
@interface PushNative : NSObject<RCTBridgeModule>

@end
