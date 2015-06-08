//
//  Unit.h
//  Convert
//
//  Created by Tom Pullen on 08/06/2015.
//  Copyright (c) 2015 Tom Pullen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Unit : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSDecimalNumber *rateToBaseUnit;

@end
