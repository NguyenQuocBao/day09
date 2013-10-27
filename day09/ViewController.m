//
//  ViewController.m
//
//  Created by Nguyen Bao on 10/26/13.
//  Copyright (c) 2013 Nguyen Quoc Bao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSLayoutConstraint *_leadingConstrain1;
    NSLayoutConstraint *_leadingConstrain2;
    NSLayoutConstraint *_leadingConstrain3;
}
@end

@implementation ViewController{
    UILabel *label1;
    UILabel *label2;
    UILabel *label3;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    label1 = [UILabel new];
    label1.translatesAutoresizingMaskIntoConstraints = NO;
    label1.text = @"Label 1";
    label1.backgroundColor = [UIColor greenColor];
    [label1 setFrame:CGRectMake(0, 0, 300, 300)];
    
    
    label2 = [UILabel new];
    label2.translatesAutoresizingMaskIntoConstraints = NO;
    label2.text = @"Label 2";
    label2.backgroundColor = [UIColor greenColor];
    
    
    label3 = [UILabel new];
    label3.translatesAutoresizingMaskIntoConstraints = NO;
    label3.text = @"Label 3";
    label3.backgroundColor = [UIColor greenColor];
    
    
    // Add them all to the view
    [self.view addSubview:label1];
    [self.view addSubview:label2];
    [self.view addSubview:label3];
    
    
    
    
    
}



- (void)viewWillLayoutSubviews{
    
    [self.view removeConstraints:self.view.constraints];
    
    
    if (UIDeviceOrientationIsLandscape([[UIDevice currentDevice] orientation])) {
        
        
        
        // Center them all horizontally
        [self.view addConstraint:[NSLayoutConstraint constraintWithItem:label1 attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0]];
        
        [self.view addConstraint:[NSLayoutConstraint constraintWithItem:label2 attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0]];
        
        [self.view addConstraint:[NSLayoutConstraint constraintWithItem:label3 attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0]];
        
        // Center the middle one vertically
        [self.view addConstraint:[NSLayoutConstraint constraintWithItem:label2 attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0]];
        
        // Position the top one half way up
        [self.view addConstraint:[NSLayoutConstraint constraintWithItem:label1 attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:label2 attribute:NSLayoutAttributeCenterX multiplier:0.5 constant:0]];
        
        // Position the bottom one half way down
        [self.view addConstraint:[NSLayoutConstraint constraintWithItem:label3 attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:label2 attribute:NSLayoutAttributeCenterX multiplier:1.5 constant:0]];
    }
    else
    {
        
        // Center them all horizontally
        [self.view addConstraint:[NSLayoutConstraint constraintWithItem:label1 attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0]];
        
        [self.view addConstraint:[NSLayoutConstraint constraintWithItem:label2 attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0]];
        
        [self.view addConstraint:[NSLayoutConstraint constraintWithItem:label3 attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0]];
        
        // Center the middle one vertically
        [self.view addConstraint:[NSLayoutConstraint constraintWithItem:label2 attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0]];
        
        // Position the top one half way up
        [self.view addConstraint:[NSLayoutConstraint constraintWithItem:label1 attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:label2 attribute:NSLayoutAttributeCenterY multiplier:0.5 constant:0]];
        
        // Position the bottom one half way down
        [self.view addConstraint:[NSLayoutConstraint constraintWithItem:label3 attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:label2 attribute:NSLayoutAttributeCenterY multiplier:1.5 constant:0]];
        
        
        
        
    }
    
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
