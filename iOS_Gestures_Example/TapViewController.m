//
//  TapViewController.m
//  iOS_Gestures_Example
//
//  Created by Nathan Wainwright on 2018-08-10.
//  Copyright © 2018 Nathan Wainwright. All rights reserved.
//

#import "TapViewController.h"

@interface TapViewController ()

@end

@implementation TapViewController


- (void)viewDidLoad{
    [super viewDidLoad];
    CGFloat width = 100;
    CGFloat height = 100;
    CGRect frame = CGRectMake(CGRectGetMidX(self.view.bounds) - width/2, CGRectGetMidY(self.view.bounds) - height/2, width, height);
    
    UIView *view = [[UIView alloc] initWithFrame:frame];
    
    view.backgroundColor = [UIColor purpleColor];
    
    [self.view addSubview:view];
    
    UITapGestureRecognizer *tappedGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewTapped:)];
    
    [view addGestureRecognizer:tappedGesture];
    
    
}




- (void) viewTapped:(UITapGestureRecognizer *) sender{
//    UIColor *someColor = [[UIColor alloc] init];
//    UIColor *otherColor = [[UIColor alloc] init];
//
//    UIColor *colorThis = [someColor isEqual: otherColor] ? [UIColor brownColor] : [UIColor yellowColor];
    
    CGFloat hue = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
    CGFloat saturation = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
    CGFloat brightness = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from black
    UIColor *color = [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1];
    // https://gist.github.com/kylefox/1689973
    // will generate random colours every time.

    sender.view.backgroundColor = color;
    
    
}


@end
