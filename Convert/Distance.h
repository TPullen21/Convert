//
//  Distance.h
//  Convert
//
//  Created by Tom Pullen on 13/05/2015.
//  Copyright (c) 2015 Tom Pullen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Value.h"

@interface Distance : NSObject

@property (strong, nonatomic) Value* meters;
@property (strong, nonatomic) Value* kilometers;
@property (strong, nonatomic) Value* feet;
@property (strong, nonatomic) Value* inches;

@end
