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
    
    NSLog(@"%@:%s", self.title, __PRETTY_FUNCTION__);
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    NSLog(@"%@:%s", self.title, __PRETTY_FUNCTION__);
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    NSLog(@"%@:%s", self.title, __PRETTY_FUNCTION__);
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
   
    NSLog(@"%@:%s", self.title, __PRETTY_FUNCTION__);
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    
    NSLog(@"%@:%s", self.title, __PRETTY_FUNCTION__);
}

- (void)dealloc {
    NSLog(@"%@:%s", self.title, __PRETTY_FUNCTION__);
}
@end
