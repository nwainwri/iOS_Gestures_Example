//
//  PanEdgeViewController.m
//  iOS_Gestures_Example
//
//  Created by Nathan Wainwright on 2018-08-10.
//  Copyright © 2018 Nathan Wainwright. All rights reserved.
//

#import "PanEdgeViewController.h"

@interface PanEdgeViewController ()

@end

@implementation PanEdgeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGFloat width = 100;
    CGFloat height = 300;
    CGRect frame = CGRectMake(CGRectGetMaxX(self.view.bounds) - 20, CGRectGetMaxY(self.view.bounds) /4, width, height);
    
    UIView *view = [[UIView alloc] initWithFrame:frame];
    
    view.backgroundColor = [UIColor greenColor];
    
    [self.view addSubview:view];
    
    UIScreenEdgePanGestureRecognizer *panEdgeGesture = [[UIScreenEdgePanGestureRecognizer alloc] initWithTarget:self action:@selector(grabEdge:)];
    [self.view addGestureRecognizer:panEdgeGesture];
    
//    [self.view addGestureRecognizer:swiperight];
    //[panGesture release];
    
//    UISwipeGestureRecognizer *swiperight = [[UISwipeGestureRecognizer alloc]initWithTarget:self.view action:@selector(swiperight:)];
//    swiperight.numberOfTouchesRequired = 1;
//    swiperight.direction = UISwipeGestureRecognizerDirectionRight;
//    [self.view addGestureRecognizer:swiperight];

}


- (void) grabEdge:(UIScreenEdgePanGestureRecognizer *) sender{
// do shit here
//    UIRectEdgeLeft
    NSLog(@"PAN ECGE");
    
    
    
    
}

@end
