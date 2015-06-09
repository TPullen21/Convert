//
//  ConversionTool.m
//  Convert
//
//  Created by Tom Pullen on 13/05/2015.
//  Copyright (c) 2015 Tom Pullen. All rights reserved.
//

#import "ConversionTool.h"

@implementation ConversionTool

+(NSDecimalNumber *)convertToBaseUnit:(Unit *)unit value:(NSDecimalNumber *)value {
    return ([value decimalNumberByMultiplyingBy:unit.rateToBaseUnit]);
}

+(NSDecimalNumber *)convertFromBaseUnit:(Unit *)unit value:(NSDecimalNumber *)value {
    return ([value decimalNumberByDividingBy:unit.rateToBaseUnit]);
}


+(NSMutableArray *)getDistanceArray {
    
    NSArray *distance;
    
    Unit *metres = [[Unit alloc] initWithName:@"Meters" rateToBaseUnit:[[NSDecimalNumber alloc] initWithInt:1]];
    Unit *kilometers = [[Unit alloc] initWithName:@"Kilometers" rateToBaseUnit:[[NSDecimalNumber alloc]  initWithDouble:0.0001]];
    Unit *inches = [[Unit alloc] initWithName:@"Inches" rateToBaseUnit:[[NSDecimalNumber alloc] initWithDouble:39.3700787]];
    Unit *feet = [[Unit alloc] initWithName:@"Feet" rateToBaseUnit:[[NSDecimalNumber alloc] initWithDouble:39.3700787]];
    
    distance = @[metres, kilometers, inches, feet];
    
    return [[NSMutableArray alloc] initWithArray:[distance mutableCopy]];
}

@end
