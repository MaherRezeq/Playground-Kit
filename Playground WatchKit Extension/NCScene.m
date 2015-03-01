//
//  NCScene.m
//  Playground
//
//  Created by Maher Rezeq on 2/28/15.
//  Copyright (c) 2015 Maher Rezeq. All rights reserved.
//

#import "NCScene.h"
#import "Shape.h"

@interface NCScene () <MainSceneInterfaceControllerDelegate>
@end

@implementation NCScene


- (void)willActivate {
    
    // N letter
    Shape *nShape = [self createShapeWithPoints: @[@"b0", @"c0", @"d0", @"e0", @"f0", @"c1", @"d2", @"e3", @"f4", @"e4", @"d4", @"c4",@"b4" ]
                                          color:[UIColor colorWithRed:233.0/255 green:0.0 blue:111.0/255.0 alpha:1.0]];
    // C letter
    Shape *cShape = [self createShapeWithPoints: @[@"b10", @"b9", @"c8", @"d8", @"e8", @"f9", @"f10", @"d6"]
                                          color:[UIColor colorWithRed:135.0/255 green:135.0/255.0 blue:135.0/255.0 alpha:1.0]];
    
    
    //[self.mainScreenDelegate clearScreen];
    
    // Move to center
    [cShape moveObjectInXCoordinateBy:1];
    [cShape moveObjectInYCoordinateBy:3];
    
    // Move to center
    [nShape moveObjectInXCoordinateBy:1];
    [nShape moveObjectInYCoordinateBy:3];
    
    [self.mainScreenDelegate drawPoints:nShape.shapePoints];
    [self.mainScreenDelegate drawPoints:cShape.shapePoints];
    
}

- (Shape *)createShapeWithPoints:(NSArray *) points color:(UIColor *)color{
    
    __block NSMutableArray *shapePoints = [NSMutableArray array];
    
    [points enumerateObjectsUsingBlock:^(NSString *obj, NSUInteger idx, BOOL *stop) {
        iPoint *p = [iPoint new];
        p.color = color;
        p.location = obj;
        [shapePoints addObject:p];
    }];
    
    Shape *shape = [Shape new];
    shape.shapePoints = shapePoints;
    
    return shape;
}

@end
