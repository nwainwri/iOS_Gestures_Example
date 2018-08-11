//
//  PanEdgeViewController.m
//  iOS_Gestures_Example
//
//  Created by Nathan Wainwright on 2018-08-10.
//  Copyright © 2018 Nathan Wainwright. All rights reserved.
//

#import "PanEdgeViewController.h"

@interface PanEdgeViewController ()
- (void) grabEdge:(UIScreenEdgePanGestureRecognizer *) sender;
@property UIView *boxToBeGrabbed;
@end

@implementation PanEdgeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGFloat width = 100;
    CGFloat height = 300;
    CGRect frame = CGRectMake(CGRectGetMaxX(self.view.bounds) - 20, CGRectGetMaxY(self.view.bounds) /4, width, height);
    
    self.boxToBeGrabbed = [[UIView alloc] initWithFrame:frame];
    self.boxToBeGrabbed.backgroundColor = [UIColor greenColor];
    
    [self.view addSubview:self.boxToBeGrabbed];
    
    UIScreenEdgePanGestureRecognizer *panEdgeGesture = [[UIScreenEdgePanGestureRecognizer alloc] initWithTarget:self action:@selector(edgeGrabbed)];
    panEdgeGesture.delegate = self;
    [panEdgeGesture setEdges:UIRectEdgeRight];
    [panEdgeGesture setEdges:UIRectEdgeLeft];
    [self.view addGestureRecognizer:panEdgeGesture];
    
}


- (void) grabEdge:(UIScreenEdgePanGestureRecognizer *) sender{
    NSLog(@"PAN ECGE");
}

- (void) edgeGrabbed {
    NSLog(@"Edge grabbed");
}

@end
