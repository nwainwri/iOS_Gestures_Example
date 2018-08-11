//
//  SwipeViewController.m
//  iOS_Gestures_Example
//
//  Created by Nathan Wainwright on 2018-08-10.
//  Copyright © 2018 Nathan Wainwright. All rights reserved.
//

#import "SwipeViewController.h"

@interface SwipeViewController ()

//-(void)swiperight:(UISwipeGestureRecognizer *)gestureRecognizer;
//
//-(void)swipeleft:(UISwipeGestureRecognizer *)gestureRecognizer;


@end

@implementation SwipeViewController

- (void)viewDidLoad{
    [super viewDidLoad];
  
    UISwipeGestureRecognizer *swipeleft = [[UISwipeGestureRecognizer alloc]initWithTarget:self.view action:@selector(swipeleft:)];
    swipeleft.numberOfTouchesRequired = 1;
    swipeleft.direction = UISwipeGestureRecognizerDirectionLeft;
    [self.view addGestureRecognizer:swipeleft];
    
    UISwipeGestureRecognizer *swiperight = [[UISwipeGestureRecognizer alloc]initWithTarget:self.view action:@selector(swiperight:)];
    swiperight.numberOfTouchesRequired = 1;
    swiperight.direction = UISwipeGestureRecognizerDirectionRight;
    [self.view addGestureRecognizer:swiperight];
    
    
    
}

//  *** Terminating app due to uncaught exception 'NSInvalidArgumentException', reason: '-[UIView swipeleft:]: unrecognized selector sent to instance 0x7fa31a70d990'
// https://stackoverflow.com/questions/6326816/views-navigation-using-swipe-gesture

-(void)swipeleft:(UISwipeGestureRecognizer *)gestureRecognizer{
    [UIView animateWithDuration:0.5 animations:^{
        self.view.frame = CGRectOffset(self.view.frame, -320.0, 0.0);
//        self.viewBlack.frame = CGRectOffset(self.viewBlack.frame, -320.0, 0.0);
//        self.viewGreen.frame = CGRectOffset(self.viewGreen.frame, -320.0, 0.0);
    }];
        NSLog(@"LEFT");
}


-(void)swiperight:(UISwipeGestureRecognizer *)gestureRecognizer{
    [UIView animateWithDuration:0.5 animations:^{
        self.view.frame = CGRectOffset(self.view.frame, 320.0, 0.0);
//        self.view.frame = CGRectOffset(self.viewBlack.frame, 320.0, 0.0);
//        self.view.frame = CGRectOffset(self.viewGreen.frame, 320.0, 0.0);
        NSLog(@"Right");
    }];
}






@end
