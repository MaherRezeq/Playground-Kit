//
//  NCMatrixInterfaceController.m
//  TicTacToe
//
//  Created by Maher Rezeq on 1/24/15.
//  Copyright (c) 2015 Maher Rezeq. All rights reserved.
//

#import "NCScreenInterfaceController.h"
#import "NCScene.h"

NSInteger const kScreenSizeX = 12;
NSInteger const kScreenSizeY = 12;

@interface NCScreenInterfaceController() <MainScreenDelegate>

@property (nonatomic, weak) IBOutlet WKInterfaceButton *a0;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *a1;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *a2;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *a3;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *a4;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *a5;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *a6;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *a7;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *a8;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *a9;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *a10;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *a11;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *a12;

@property (nonatomic, weak) IBOutlet WKInterfaceButton *b0;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *b1;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *b2;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *b3;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *b4;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *b5;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *b6;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *b7;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *b8;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *b9;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *b10;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *b11;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *b12;

@property (nonatomic, weak) IBOutlet WKInterfaceButton *c0;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *c1;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *c2;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *c3;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *c4;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *c5;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *c6;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *c7;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *c8;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *c9;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *c10;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *c11;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *c12;

@property (nonatomic, weak) IBOutlet WKInterfaceButton *d0;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *d1;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *d2;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *d3;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *d4;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *d5;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *d6;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *d7;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *d8;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *d9;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *d10;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *d11;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *d12;

@property (nonatomic, weak) IBOutlet WKInterfaceButton *e0;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *e1;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *e2;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *e3;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *e4;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *e5;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *e6;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *e7;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *e8;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *e9;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *e10;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *e11;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *e12;

@property (nonatomic, weak) IBOutlet WKInterfaceButton *f0;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *f1;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *f2;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *f3;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *f4;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *f5;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *f6;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *f7;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *f8;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *f9;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *f10;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *f11;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *f12;

@property (nonatomic, weak) IBOutlet WKInterfaceButton *g0;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *g1;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *g2;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *g3;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *g4;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *g5;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *g6;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *g7;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *g8;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *g9;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *g10;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *g11;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *g12;

@property (nonatomic, weak) IBOutlet WKInterfaceButton *h0;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *h1;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *h2;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *h3;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *h4;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *h5;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *h6;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *h7;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *h8;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *h9;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *h10;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *h11;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *h12;

@property (nonatomic, weak) IBOutlet WKInterfaceButton *i0;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *i1;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *i2;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *i3;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *i4;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *i5;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *i6;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *i7;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *i8;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *i9;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *i10;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *i11;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *i12;

@property (nonatomic, weak) IBOutlet WKInterfaceButton *j0;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *j1;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *j2;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *j3;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *j4;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *j5;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *j6;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *j7;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *j8;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *j9;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *j10;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *j11;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *j12;

@property (nonatomic, weak) IBOutlet WKInterfaceButton *k0;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *k1;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *k2;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *k3;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *k4;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *k5;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *k6;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *k7;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *k8;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *k9;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *k10;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *k11;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *k12;

@property (nonatomic, weak) IBOutlet WKInterfaceButton *l0;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *l1;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *l2;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *l3;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *l4;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *l5;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *l6;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *l7;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *l8;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *l9;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *l10;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *l11;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *l12;

@property (nonatomic, weak) IBOutlet WKInterfaceButton *m0;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *m1;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *m2;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *m3;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *m4;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *m5;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *m6;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *m7;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *m8;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *m9;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *m10;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *m11;
@property (nonatomic, weak) IBOutlet WKInterfaceButton *m12;

@property (nonatomic, strong) NSMutableArray *pointsMatrix;
// Hold on the main scene
@property (nonatomic, weak) id <MainSceneInterfaceControllerDelegate> mainSceneDelegate;

@property (nonatomic, strong) NCScene *mainScene;

// Remove
@property (nonatomic,assign) int value;
@end

@implementation NCScreenInterfaceController

#pragma Life cycle

- (instancetype)init {
    self = [super init];
    if (self) {
        _mainScene = [[NCScene alloc] init];
    }
    return self;
}

- (void)awakeWithContext:(id)context {
    
    [super awakeWithContext:context];
    // Main scene delegate
    self.mainSceneDelegate = (id<MainSceneInterfaceControllerDelegate>)self.mainScene;
    // Main screen delegate
    self.mainScene.mainScreenDelegate = self;
    // Setup the main screen
    [self screenSetup];

    // Call the main scene
    if ([self.mainSceneDelegate respondsToSelector:@selector(awakeWithContext:)]) {
        [self.mainSceneDelegate awakeWithContext:context];
    }
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
    
    if ([self.mainSceneDelegate respondsToSelector:@selector(willActivate)]) {
        [self.mainSceneDelegate willActivate];
    }
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
    
    if ([self.mainSceneDelegate respondsToSelector:@selector(didDeactivate)]) {
        [self.mainSceneDelegate didDeactivate];
    }
    
}

#pragma MainScreenDelegate

- (void)clearScreen{
    
    __weak NCScreenInterfaceController *weakSelf = self;
    
    [self.pointsMatrix enumerateObjectsUsingBlock:^(NSArray *obj, NSUInteger idx, BOOL *stop) {
        
        __weak NCScreenInterfaceController *strongSelf = weakSelf;
        
        for (iPoint *sP in obj) {
            WKInterfaceButton * interfaceObj = [strongSelf interfaceButtonFromSelectorString:sP.location];
            [interfaceObj setColor:sP.color];
            [interfaceObj setBackgroundImage:nil];
        }
    }];
}

- (void)drawPoints:(NSArray *)points {
    __weak NCScreenInterfaceController *weakSelf = self;
    
    [points enumerateObjectsUsingBlock:^(iPoint *obj, NSUInteger idx, BOOL *stop) {
        __weak NCScreenInterfaceController *strongSelf = weakSelf;
        [strongSelf drawPoint:obj];
    }];
}

- (void)drawPoint:(iPoint *)point {
    // Get point location
    WKInterfaceButton * interfaceObj = [self interfaceButtonFromSelectorString:point.location];
    // Draw color
    if (point.color) {
        [interfaceObj setColor:point.color];
    } else if (point.image) {
        [interfaceObj setBackgroundImageNamed:point.image];
    }
}

#pragma Public methods

- (void)screenSetup {
    
    //char to int ASCII-code
    char c = 'a';
    int asciiCode = (int)c;
    
    self.pointsMatrix = [NSMutableArray array];
    
    int sectionCount = kScreenSizeX+1;
    int rowsCount = kScreenSizeY+1;
    
    for (int i = 0; i < sectionCount; i++) {
        
        NSMutableArray *rows = [[NSMutableArray alloc] init];
        
        for (int j = 0; j < rowsCount; j++) {
            iPoint *point = [[iPoint alloc] init];
            point.color = [UIColor clearColor];
            point.location = [NSString stringWithFormat:@"%c%d", asciiCode, j];
            [rows addObject:point];
        }
        [self.pointsMatrix addObject:rows];
        asciiCode++;
    }
}

#pragma Private methods

- (WKInterfaceButton *)interfaceButtonFromSelectorString:(NSString *)selectorString {
    
    WKInterfaceButton *interfaceObj;
    SEL selector = NSSelectorFromString(selectorString);
    IMP imp = [self methodForSelector:selector];
    WKInterfaceButton * (*func)(id, SEL) = (void *)imp;
    interfaceObj = func(self, selector);
    
    return interfaceObj;
}


@end
