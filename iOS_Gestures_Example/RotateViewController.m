//
//  RotateViewController.m
//  iOS_Gestures_Example
//
//  Created by Nathan Wainwright on 2018-08-10.
//  Copyright © 2018 Nathan Wainwright. All rights reserved.
//

#import "RotateViewController.h"

@interface RotateViewController ()

@end

@implementation RotateViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // WONT EVEN LOAD A SQUARE
    
    
    CGFloat width = 100;
    CGFloat height = 100;
    CGRect rotBoxFrame = CGRectMake(CGRectGetMidX(self.view.bounds) - width/2, CGRectGetMidY(self.view.bounds) - height/2, width, height);
    
    UIView *view = [[UIView alloc] initWithFrame:rotBoxFrame];
    
    view.backgroundColor = [UIColor blueColor];
    
    [self.view addSubview:view];

    UIRotationGestureRecognizer *pinchGesture = [[UIRotationGestureRecognizer alloc] initWithTarget:self action:@selector(viewRotate:)];
    [view addGestureRecognizer:pinchGesture];
    
    
}

- (void) viewRotate:(UIPinchGestureRecognizer *) sender{

    CGFloat scale = sender.scale;
    sender.view.transform = CGAffineTransformMakeScale(scale, scale);
    scale = 1.0;
}


@end
