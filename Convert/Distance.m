//
//  Distance.m
//  Convert
//
//  Created by Tom Pullen on 13/05/2015.
//  Copyright (c) 2015 Tom Pullen. All rights reserved.
//

#import "Distance.h"

@implementation Distance

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.meters.rateToBaseUnit = [[NSDecimalNumber alloc] initWithInt:1];
        self.kilometers.rateToBaseUnit = [[NSDecimalNumber alloc] initWithDouble:0.0001];
        self.inches.rateToBaseUnit = [[NSDecimalNumber alloc] initWithDouble:39.3700787];
        self.feet.rateToBaseUnit = [[NSDecimalNumber alloc] initWithDouble:3.2808399];
    }
    return self;
}

@end
