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
    return [[NSMutableArray alloc] init];
}

@end
