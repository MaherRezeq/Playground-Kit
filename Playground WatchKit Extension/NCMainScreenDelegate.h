//
//  NCMainScreenDelegate.h
//  Playground
//
//  Created by Maher Rezeq on 2/28/15.
//  Copyright (c) 2015 Native & Creative. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "iPoint.h"

@protocol MainScreenDelegate <NSObject>

@required
- (void)clearScreen;
- (void)drawPoint:(iPoint *)point;
- (void)drawPoints:(NSArray *)points;

@end

@protocol MainSceneInterfaceControllerDelegate <NSObject>

@optional
- (void)awakeWithContext:(id)context;
- (void)willActivate;
- (void)didDeactivate;

@end

