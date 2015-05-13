//
//  Value.h
//  Convert
//
//  Created by Tom Pullen on 13/05/2015.
//  Copyright (c) 2015 Tom Pullen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Value : NSObject

@property (nonatomic) NSDecimalNumber *value;
@property (nonatomic) NSDecimalNumber *rateToBaseUnit;

@end
