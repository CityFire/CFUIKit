//
//  RouterDispatcher.h
//  TZGame
//
//  Created by wjc on 2018/3/25.
//  Copyright © 2018年 wjc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RouterDispatcher : NSObject

@end

#pragma mark - Annotation
///=============================================================================
/// @name Annotation
///=============================================================================

#define page(__pageID__) \
compatibility_alias _RouterDispatcher RouterDispatcher; \
+ (NSString *)pageID { \
return __pageID__; \
} \
+ (void) load { \
[self registerPage:[self pageID]]; \
}

// for example:
//@page(@"main")
//@compatibility_alias _RouterDispatcher RouterDispatcher;
//+ (void)load {
//    [self registerPage:@"main"];
//}

