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
@property (nonatomic,strong) Shape *sh1;
@end

@implementation NCScene


- (void)willActivate {
    
    iPoint *n0 = [[iPoint alloc] init];
    n0.color = [UIColor colorWithRed:233.0/255 green:0.0 blue:111.0/255.0 alpha:1.0];
    n0.location = @"b0";
    
    iPoint *n1 = [[iPoint alloc] init];
    n1.color = [UIColor colorWithRed:233.0/255 green:0.0 blue:111.0/255.0 alpha:1.0];
    n1.location = @"c0";
    
    iPoint *n2 = [[iPoint alloc] init];
    n2.color = [UIColor colorWithRed:233.0/255 green:0.0 blue:111.0/255.0 alpha:1.0];
    n2.location = @"d0";
    
    iPoint *n3 = [[iPoint alloc] init];
    n3.color = [UIColor colorWithRed:233.0/255 green:0.0 blue:111.0/255.0 alpha:1.0];
    n3.location = @"e0";
    
    iPoint *n4 = [[iPoint alloc] init];
    n4.color = [UIColor colorWithRed:233.0/255 green:0.0 blue:111.0/255.0 alpha:1.0];
    n4.location = @"f0";
    
    iPoint *n5 = [[iPoint alloc] init];
    n5.color = [UIColor colorWithRed:233.0/255 green:0.0 blue:111.0/255.0 alpha:1.0];
    n5.location = @"c1";
    
    iPoint *n6 = [[iPoint alloc] init];
    n6.color = [UIColor colorWithRed:233.0/255 green:0.0 blue:111.0/255.0 alpha:1.0];
    n6.location = @"d2";
    
    iPoint *n7 = [[iPoint alloc] init];
    n7.color = [UIColor colorWithRed:233.0/255 green:0.0 blue:111.0/255.0 alpha:1.0];
    n7.location = @"e3";
    
    iPoint *n8 = [[iPoint alloc] init];
    n8.color = [UIColor colorWithRed:233.0/255 green:0.0 blue:111.0/255.0 alpha:1.0];
    n8.location = @"f4";
    
    iPoint *n9 = [[iPoint alloc] init];
    n9.color = [UIColor colorWithRed:233.0/255 green:0.0 blue:111.0/255.0 alpha:1.0];
    n9.location = @"e4";
    
    iPoint *n10 = [[iPoint alloc] init];
    n10.color = [UIColor colorWithRed:233.0/255 green:0.0 blue:111.0/255.0 alpha:1.0];
    n10.location = @"d4";
    
    iPoint *n11 = [[iPoint alloc] init];
    n11.color = [UIColor colorWithRed:233.0/255 green:0.0 blue:111.0/255.0 alpha:1.0];
    n11.location = @"c4";
    
    iPoint *n12 = [[iPoint alloc] init];
    n12.color = [UIColor colorWithRed:233.0/255 green:0.0 blue:111.0/255.0 alpha:1.0];
    n12.location = @"b4";

    iPoint *c0 = [[iPoint alloc] init];
    c0.color = [UIColor colorWithRed:135.0/255 green:135.0/255.0 blue:135.0/255.0 alpha:1.0];
    c0.location = @"b10";
    
    iPoint *c1 = [[iPoint alloc] init];
    c1.color = [UIColor colorWithRed:135.0/255 green:135.0/255.0 blue:135.0/255.0 alpha:1.0];
    c1.location = @"b9";
    
    
    iPoint *c2 = [[iPoint alloc] init];
    c2.color = [UIColor colorWithRed:135.0/255 green:135.0/255.0 blue:135.0/255.0 alpha:1.0];
    c2.location = @"c8";
    
    
    iPoint *c3 = [[iPoint alloc] init];
    c3.color = [UIColor colorWithRed:135.0/255 green:135.0/255.0 blue:135.0/255.0 alpha:1.0];
    c3.location = @"d8";
    
    
    iPoint *c4 = [[iPoint alloc] init];
    c4.color = [UIColor colorWithRed:135.0/255 green:135.0/255.0 blue:135.0/255.0 alpha:1.0];
    c4.location = @"e8";
    
    
    iPoint *c5 = [[iPoint alloc] init];
    c5.color = [UIColor colorWithRed:135.0/255 green:135.0/255.0 blue:135.0/255.0 alpha:1.0];
    c5.location = @"f9";
    
    iPoint *c6 = [[iPoint alloc] init];
    c6.color = [UIColor colorWithRed:135.0/255 green:135.0/255.0 blue:135.0/255.0 alpha:1.0];
    c6.location = @"f10";
    
    
    
    iPoint *d6 = [[iPoint alloc] init];
    d6.color = [UIColor colorWithRed:233.0/255 green:0.0 blue:111.0/255.0 alpha:1.0];
    d6.location = @"d6";

    
    iPoint *p1 = [[iPoint alloc] init];
    p1.color = [UIColor redColor];
    p1.location = @"a6";
    
    iPoint *p2 = [[iPoint alloc] init];
    p2.color = [UIColor redColor];
    p2.location = @"b5";
    
    iPoint *p3 = [[iPoint alloc] init];
    p3.color = [UIColor yellowColor];
    p3.location = @"b6";
    
    iPoint *p4 = [[iPoint alloc] init];
    p4.color = [UIColor redColor];
    p4.location = @"b7";
    
    
    //[self.mainScreenDelegate clearScreen];
    
    NSArray *points = @[n0,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,d6,c0,c1,c2,c3,c4,c5,c6];
    self.sh1 =[[Shape alloc]init];
    self.sh1.shapePoints = points;
    
    [self.sh1 moveObjectInXCoordinateBy:1];
    [self.sh1 moveObjectInYCoordinateBy:3];
    
    [self.mainScreenDelegate drawPoints:self.sh1.shapePoints];
}

@end
