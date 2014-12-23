//
//  RootViewController.m
//  LetsNavigateTheVCsStack
//
//  Created by Mathieu Tan on 12/23/14.
//  Copyright (c) 2014 mataejoon. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    UIBarButtonItem *searchButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSearch target:self action:@selector(triggerModalVC)];
    self.navigationItem.rightBarButtonItem = searchButton;
}

- (void)triggerModalVC {
    UIViewController *vc1 = [UIViewController new];
    vc1.title = @"First View Controller";
    UIView *view1 = [[UIView alloc] initWithFrame:self.view.bounds];
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(self.view.frame.origin.x + 10, self.view.frame.size.height / 2, 320, 44)];
    label.text = @"This is the content of the presentedVC";
    [view1 addSubview:label];
    vc1.view = view1;
    
    [self.navigationController presentViewController:vc1 animated:YES completion:nil];
}
@end
