//
//  ConversionTool.h
//  Convert
//
//  Created by Tom Pullen on 13/05/2015.
//  Copyright (c) 2015 Tom Pullen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Unit.h"

@interface ConversionTool : NSObject

+(NSDecimalNumber *)convertToBaseUnit:(Unit *)unit value:(NSDecimalNumber *)value;
+(NSDecimalNumber *)convertFromBaseUnit:(Unit *)unit value:(NSDecimalNumber *)value;

+(NSMutableArray *)getDistanceArray;

@end
