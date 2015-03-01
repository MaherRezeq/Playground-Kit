//
//  Shape.m
//  Playground
//
//  Created by Maher Rezeq on 2/28/15.
//  Copyright (c) 2015 Maher Rezeq. All rights reserved.
//

#import "Shape.h"
#import "NCScreenInterfaceController.h"

@implementation Shape

- (void)moveObjectInXCoordinateBy:(NSInteger)x
{
    __block NSInteger minX = x;
    
    [self.shapePoints enumerateObjectsUsingBlock:^(iPoint *obj, NSUInteger idx, BOOL *stop) {
        NSInteger xlocation = obj.x + x;
        
        if (xlocation > kScreenSizeX) {
            minX = kScreenSizeX - obj.x;
        }
        if (xlocation < (long)0) {
            minX = 0;
        }
    }];
    
    [self.shapePoints enumerateObjectsUsingBlock:^(iPoint *obj, NSUInteger idx, BOOL *stop) {
        [obj moveX:(int)minX];
    }];
    
    
    
}
- (void)moveObjectInYCoordinateBy:(NSInteger)y {
    
    __block NSInteger minY = y;
    
    [self.shapePoints enumerateObjectsUsingBlock:^(iPoint *obj, NSUInteger idx, BOOL *stop) {
        NSInteger ylocation = obj.y + y;
        
        if (ylocation > kScreenSizeY) {
            minY = kScreenSizeX - obj.y;
        }
        
        if (ylocation < 0) {
            minY = 0;
        }
    }];
    
    [self.shapePoints enumerateObjectsUsingBlock:^(iPoint *obj, NSUInteger idx, BOOL *stop) {
        
        [obj moveY:(int)minY];
    }];
    
}
@end
