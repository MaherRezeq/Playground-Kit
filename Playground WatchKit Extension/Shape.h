//
//  Shape.h
//  Playground
//
//  Created by Maher Rezeq on 2/28/15.
//  Copyright (c) 2015 Maher Rezeq. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "iPoint.h"

@interface Shape : NSObject

@property (nonatomic, strong) NSArray *shapePoints;

- (void)moveObjectInXCoordinateBy:(NSInteger)x;
- (void)moveObjectInYCoordinateBy:(NSInteger)y;
@end
