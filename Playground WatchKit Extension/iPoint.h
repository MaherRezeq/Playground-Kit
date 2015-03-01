//
//  iPoint.h
//  Playground
//
//  Created by Maher Rezeq on 2/28/15.
//  Copyright (c) 2015 Maher Rezeq. All rights reserved.
//

@import WatchKit;

// Integer point
@interface iPoint : NSObject
// Texture
@property (nonatomic, strong) UIColor *color;
@property (nonatomic, strong) NSString *image;
// Location
@property (nonatomic, strong) NSString *location;
@property (nonatomic, assign) int y;
@property (nonatomic, assign) int x;

- (void)moveY:(int)y;
- (void)moveX:(int)x;
@end
