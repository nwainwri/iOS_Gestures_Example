//
//  SwipeViewController.m
//  iOS_Gestures_Example
//
//  Created by Nathan Wainwright on 2018-08-10.
//  Copyright © 2018 Nathan Wainwright. All rights reserved.
//

#import "SwipeViewController.h"

@interface SwipeViewController ()

@property (weak, nonatomic) IBOutlet UIView *boxToBeSwiped;

-(void)swiperight:(UISwipeGestureRecognizer *)gestureRecognizer;

-(void)swipeleft:(UISwipeGestureRecognizer *)gestureRecognizer;


@end

@implementation SwipeViewController

- (void)viewDidLoad{
    [super viewDidLoad];
  
    UISwipeGestureRecognizer *swipeleft = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipeleft:)];
    swipeleft.numberOfTouchesRequired = 1;
    swipeleft.direction = UISwipeGestureRecognizerDirectionLeft;
    [self.boxToBeSwiped addGestureRecognizer:swipeleft];
    
    UISwipeGestureRecognizer *swiperight = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swiperight:)];
    swiperight.numberOfTouchesRequired = 1;
    swiperight.direction = UISwipeGestureRecognizerDirectionRight;
    [self.boxToBeSwiped addGestureRecognizer:swiperight];
    
//    [self.boxToBeSwiped removeGestureRecognizer:swipeleft]; // medhto to call to remove a gesture
    
    
    
    
    
}

//  *** Terminating app due to uncaught exception 'NSInvalidArgumentException', reason: '-[UIView swipeleft:]: unrecognized selector sent to instance 0x7fa31a70d990'
// https://stackoverflow.com/questions/6326816/views-navigation-using-swipe-gesture

-(void)swipeleft:(UISwipeGestureRecognizer *)gestureRecognizer{
    [UIView animateWithDuration:0.5 animations:^{
        self.boxToBeSwiped.frame = CGRectOffset(self.boxToBeSwiped.frame, -320.0, 0.0);

    }];
}


-(void)swiperight:(UISwipeGestureRecognizer *)gestureRecognizer{
    [UIView animateWithDuration:0.5 animations:^{
        self.boxToBeSwiped.frame = CGRectOffset(self.boxToBeSwiped.frame, 320.0, 0.0);
    }];
}






@end
