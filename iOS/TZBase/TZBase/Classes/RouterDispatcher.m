//
//  RouterDispatcher.m
//  TZGame
//
//  Created by wjc on 2018/3/25.
//  Copyright © 2018年 wjc. All rights reserved.
//

#import "RouterDispatcher.h"

@implementation RouterDispatcher

static NSMutableDictionary<NSString */*page*/, NSString */*dispatcherClazz*/> kPages;

+ (void)registerPage:(NSString *)pageID {
    if (kPages == nil) {
        kPages = [[NSMutableDictionary alloc] init];
    }
    kPages[page] = NSStringFromClass([self class]);
}

+ (void)dispatchPage:(NSString *)pageID {
    NSString *dispatcherClazz = kPages[pageID];
    if (dispatcherClazz == nil) {
        return;
    }
    Class dispatcherClass = NSClassFromString(dispatcherClazz);
    RouterDispatcher dispatcher = [[dispatcherClass alloc] init];
    [dispatcher dispatch];
}

@end
