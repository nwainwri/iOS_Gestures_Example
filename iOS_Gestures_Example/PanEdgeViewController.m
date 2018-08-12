//
//  PanEdgeViewController.m
//  iOS_Gestures_Example
//
//  Created by Nathan Wainwright on 2018-08-10.
//  Copyright © 2018 Nathan Wainwright. All rights reserved.
//

#import "PanEdgeViewController.h"

@interface PanEdgeViewController () <UIGestureRecognizerDelegate> {
    CGFloat _centerX;
    CGFloat _rightEdgeScreen;
}



@property UIView *boxToBeGrabbed;
//- (void) edgeGrabbedRight;
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
    
    UIScreenEdgePanGestureRecognizer *panEdgeGestureRightEdge = [[UIScreenEdgePanGestureRecognizer alloc] initWithTarget:self action:@selector(edgeGrabbedRight:)];
    panEdgeGestureRightEdge.delegate = self;
    panEdgeGestureRightEdge.edges = UIRectEdgeRight;
    [self.view addGestureRecognizer:panEdgeGestureRightEdge];
    
    //target action 
    UISwipeGestureRecognizer *swiperight = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swiperight:)];
    swiperight.numberOfTouchesRequired = 1;
    swiperight.direction = UISwipeGestureRecognizerDirectionRight;
    [self.view addGestureRecognizer:swiperight];
    
    _centerX = self.view.bounds.size.width / 2; // this lets us reset box to 'center', but need "right edge"
    _rightEdgeScreen = self.view.frame.size.width;
    
    
}

- (void) edgeGrabbedRight:(UIScreenEdgePanGestureRecognizer *)gestureRecognizer {
    
    [UIView animateWithDuration:0.7 animations:^{
        self.boxToBeGrabbed.frame = CGRectOffset(self.boxToBeGrabbed.frame, -5.0, 0.0);
    }];
    
    if(UIGestureRecognizerStateBegan == gestureRecognizer.state ||
       UIGestureRecognizerStateChanged == gestureRecognizer.state) {
        CGPoint translation = [gestureRecognizer translationInView:gestureRecognizer.view];
        
        self.boxToBeGrabbed.center = CGPointMake(_rightEdgeScreen + translation.x, self.boxToBeGrabbed.center.y);
    } else {  // cancel, fail, or ended
        // reset

        // Animate back to center x
        [UIView animateWithDuration:.3 animations:^{
            self.boxToBeGrabbed.center = CGPointMake(_rightEdgeScreen, self.boxToBeGrabbed.center.y);
            
        }];
    }
}

-(void)swiperight:(UISwipeGestureRecognizer *)gestureRecognizer{
    [UIView animateWithDuration:0.7 animations:^{
        self.boxToBeGrabbed.frame = CGRectOffset(self.boxToBeGrabbed.frame, 70.0, 0.0);
    }];
}


@end
