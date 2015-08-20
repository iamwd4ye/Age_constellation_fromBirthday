//
//  GGAgeandConstellationFromBirthday.m
//  GiftGuide
//
//  Created by qianfeng on 15-8-20.
//  Copyright (c) 2015年 daihanqi. All rights reserved.
//

#import "GGAgeandConstellationFromBirthday.h"

@implementation GGAgeandConstellationFromBirthday

/**
 *  由生日获得年龄
 *
 *  @param birthday
 *
 *  @return age
 */
+ (NSInteger)ageFromBirthday:(NSString *)birthdayYear{
    
    NSDate * date = [NSDate date];
    
    NSDateFormatter * formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = @"yyyy年MM月dd日";
    
    NSString * dateStr = [formatter stringFromDate:date];
    
    NSArray * dateArray = [dateStr componentsSeparatedByString:@"年"];
    
    return [dateArray[0] integerValue] - [birthdayYear integerValue] + 1;
}

/**
 *  由生日获得星座
 *
 *  @param birthday
 *
 *  @return constellation
 */
+ (NSString *)constellationFromBirthday:(NSString *)birthday{
    
    NSRange monthRange ;
    monthRange.length = 2;
    monthRange.location = 4;
    NSString *month = [birthday substringWithRange:monthRange];
    
    
    int intMonth = [month intValue];
    
    NSRange dayRange ;
    dayRange.length = 2;
    dayRange.location = 6;
    NSString *day = [birthday substringWithRange:dayRange];
    
    int intDay = [day intValue];
    
    switch (intMonth) {
        case 1:
        {
            if (intDay <= 19)
                return @"摩羯座";
            else
                return @"水瓶座";
            break;
        }
        case 2:
        {
            if (intDay <= 18)
                return @"水瓶座";
            else
                return @"双鱼座";
            break;
        }
        case 3:
        {
            if (intDay <= 20)
                return @"双鱼座";
            else
                return @"白羊座";
            break;
        }
        case 4:
        {
            if (intDay <= 19)
                return @"白羊座";
            else
                return @"金牛座";
            break;
        }
        case 5:
        {
            if (intDay <= 20)
                return @"金牛座";
            else
                return @"双子座";
            break;
        }
        case 6:
        {
            if (intDay <= 21)
                return @"双子座";
            else
                return @"巨蟹座";
            break;
        }
        case 7:
        {
            if (intDay <= 22)
                return @"巨蟹座";
            else
                return @"狮子座";
            break;
        }
        case 8:
        {
            if (intDay <= 22)
                return @"狮子座";
            else
                return @"处女座";
            break;
        }
        case 9:
        {
            if (intDay <= 22)
                return @"处女座";
            else
                return @"天枰座";
            break;
        }
        case 10:
        {
            if (intDay <= 23)
                return @"天枰座";
            else
                return @"天蝎座";
            break;
        }
        case 11:
        {
            if (intDay <= 22)
                return @"天蝎座";
            else
                return @"射手座";
            break;
        }
        case 12:
        {
            if (intDay <= 19)
                return @"摩羯座";
            else
                return @"水瓶座";
            break;
        }
            
        default:
            break;
    }
    return nil;
}

@end
