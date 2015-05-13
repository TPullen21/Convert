//
//  ConversionTool.m
//  Convert
//
//  Created by Tom Pullen on 13/05/2015.
//  Copyright (c) 2015 Tom Pullen. All rights reserved.
//

#import "ConversionTool.h"

@implementation ConversionTool

+(NSDecimalNumber *)convertToBaseUnit:(Value *)value {
    return ([value.value decimalNumberByMultiplyingBy:value.rateToBaseUnit]);
}

+(NSDecimalNumber *)convertFromBaseUnit:(Value *)value {
    return ([value.value decimalNumberByDividingBy:value.rateToBaseUnit]);
}

@end
