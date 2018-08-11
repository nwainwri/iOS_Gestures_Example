//
//  RotateViewController.m
//  iOS_Gestures_Example
//
//  Created by Nathan Wainwright on 2018-08-10.
//  Copyright © 2018 Nathan Wainwright. All rights reserved.
//

#import "RotateViewController.h"

@interface RotateViewController ()

-(void)handleRotationWithGestureRecognizer:(UIRotationGestureRecognizer *)rotationGestureRecognizer;

@property UIView *container;

@end

@implementation RotateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGFloat width = 100;
    CGFloat height = 100;
    CGRect dialFrame = CGRectMake(CGRectGetMidX(self.view.bounds) - width/2, CGRectGetMidY(self.view.bounds) - height/2, width, height);
    self.container = [[UIView alloc] initWithFrame:dialFrame];
    CGFloat angleSize = 2*M_PI/6;
    for (int i = 0; i < 6; i++) {
        UILabel *im = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 40)];
        im.backgroundColor = [UIColor redColor];
        im.text = [NSString stringWithFormat:@"%i", i];
        im.layer.anchorPoint = CGPointMake(1.0f, 0.5f);
        im.layer.position = CGPointMake(self.container.bounds.size.width/2.0,
                                        self.container.bounds.size.height/2.0);
        im.transform = CGAffineTransformMakeRotation(angleSize * i);
        im.tag = i;
        [self.container addSubview:im];
    }
    [self.view addSubview:self.container];
    
    
    UIRotationGestureRecognizer *rotateGesture = [[UIRotationGestureRecognizer alloc] initWithTarget:self action:@selector(handleRotationWithGestureRecognizer:)];
    
    [self.container addGestureRecognizer:rotateGesture];

    
    
}

-(void)handleRotationWithGestureRecognizer:(UIRotationGestureRecognizer *)rotationGestureRecognizer{
    self.container.transform = CGAffineTransformRotate(self.container.transform, rotationGestureRecognizer.rotation);
    
    rotationGestureRecognizer.rotation = 0.0;
}


@end
