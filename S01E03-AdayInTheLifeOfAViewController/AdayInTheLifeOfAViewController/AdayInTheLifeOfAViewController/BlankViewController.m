//
//  BlankViewController.m
//  AdayInTheLifeOfAViewController
//
//  Created by Mathieu Tan on 12/28/14.
//  Copyright (c) 2014 mataejoon. All rights reserved.
//

#import "BlankViewController.h"

@interface BlankViewController ()

@end

@implementation BlankViewController

//this will be called if this view controller has not unarchived the nib yet
//if the viewcontroller is popped from a VC stack this method will be called again
- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.title = @"Green VC";
    self.view.backgroundColor = [UIColor greenColor];
    
    NSLog(@"%@ %@", self.title, NSStringFromSelector(_cmd));
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    NSLog(@"%@ %@", self.title, NSStringFromSelector(_cmd));
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
}

- (void)dealloc {
    NSLog(@"%@ %@", self.title, NSStringFromSelector(_cmd));
}
@end
