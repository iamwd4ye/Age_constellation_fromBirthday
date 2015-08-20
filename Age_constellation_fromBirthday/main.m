//
//  main.m
//  Age_constellation_fromBirthday
//
//  Created by qianfeng on 15-8-20.
//  Copyright (c) 2015年 daihanqi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GGAgeandConstellationFromBirthday.h"

/*
 *  由生日计算出年龄，星座
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSInteger age = [GGAgeandConstellationFromBirthday ageFromBirthday:@"1990"];
        NSLog(@"年龄 %ld", age);
        
        NSString * constellation = [GGAgeandConstellationFromBirthday constellationFromBirthday:@"19910108"];
        NSLog(@"星座%@", constellation);
    }
    return 0;
}
