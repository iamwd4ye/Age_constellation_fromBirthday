//
//  GGAgeandConstellationFromBirthday.h
//  GiftGuide
//
//  Created by qianfeng on 15-8-20.
//  Copyright (c) 2015年 daihanqi. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  由生日，计算年龄和星座
 */
@interface GGAgeandConstellationFromBirthday : NSObject

/**
 *  由生日获得年龄
 *
 *  @param birthday
 *
 *  @return age
 */
+ (NSInteger)ageFromBirthday:(NSString *)birthdayYear;

/**
 *  由生日获得星座
 *
 *  @param birthday
 *
 *  @return constellation
 */
+ (NSString *)constellationFromBirthday:(NSString *)birthday;

@end
