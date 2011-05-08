//
//  iOSInfoCenter.m
//  iOSInfoCenter API
//
//  Created by Charlie Fish on 3/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "iOSInfoCenter.h"


@implementation iOSInfoCenter

-(NSString *)bundleid{
    NSBundle* mainBundle;
    mainBundle = [NSBundle mainBundle];
    
    return [mainBundle bundleIdentifier];

    
}
-(NSString *)buildnumber{
    NSBundle* mainBundle;
    mainBundle = [NSBundle mainBundle];

    
    return [mainBundle objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
}


@end
