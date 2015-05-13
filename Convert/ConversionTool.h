//
//  ConversionTool.h
//  Convert
//
//  Created by Tom Pullen on 13/05/2015.
//  Copyright (c) 2015 Tom Pullen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Value.h"

@interface ConversionTool : NSObject

+(NSDecimalNumber *)convertToBaseUnit:(Value *)value; 
+(NSDecimalNumber *)convertFromBaseUnit:(Value *)value;

@end
