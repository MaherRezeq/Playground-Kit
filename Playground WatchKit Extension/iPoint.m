//
//  iPoint.m
//  Playground
//
//  Created by Maher Rezeq on 2/28/15.
//  Copyright (c) 2015 Maher Rezeq. All rights reserved.
//

#import "iPoint.h"

@implementation iPoint


- (instancetype)init {
    
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (int)y {
    
    char c = 'a';
    int asciiCode = (int)c;
    
    const char *l = [_location cStringUsingEncoding:NSUTF8StringEncoding];
    
    return (int)l[0] - asciiCode;
}

- (int)x {
    
    int yCoordinate = [[_location substringFromIndex:1] intValue];
    
    return yCoordinate;
}


- (void)moveX:(int)x {
    int xCoordinate = [[_location substringFromIndex:1] intValue];
    self.location = [NSString stringWithFormat:@"%c%d",(int)self.y +(int)'a', xCoordinate + x];
}

- (void)moveY:(int)y {
    
    int yCoordinate = self.y;
    yCoordinate += y;
    self.location = [NSString stringWithFormat:@"%c%d", yCoordinate + (int)'a', self.x];
}
@end