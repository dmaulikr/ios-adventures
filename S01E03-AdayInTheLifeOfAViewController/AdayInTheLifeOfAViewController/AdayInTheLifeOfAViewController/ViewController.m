//
//  ViewController.m
//  AdayInTheLifeOfAViewController
//
//  Created by Mathieu Tan on 12/24/14.
//  Copyright (c) 2014 mataejoon. All rights reserved.
//

#import "ViewController.h"

#import "BlankViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *leftMeAlone;
@property (nonatomic)NSInteger number;

@end

@implementation ViewController

#pragma mark - UIViewController LifeCycle

//The reason viewDidLoad exists – the only reason – is that it sometimes isn’t possible or efficient to configure 100% of an interface in a XIB.
//Thus, viewDidLoad is sent to a view controller right after its XIB file is loaded to allow you to perform this additional customization of views. It exists specifically for this, and only this.
//The method viewDidLoad, then, is not to infer anything about the state of the application at the time it was called. It is simply an internal mechanism for post-processing the loading of a file. In other words, it should be considered as an extension to the XIB file itself, not a part of the application’s flow.

- (instancetype)initWithTitle:(NSString *)title {
    self = [super init];
    if (!self) return nil;
    
    self.title = title;
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
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
    
    ++self.number;
    self.leftMeAlone.text = [NSString stringWithFormat:@"You left me alone %ld times", self.number];
}

- (void)dealloc {
    NSLog(@"%@ %@", self.title, NSStringFromSelector(_cmd));
}











//YOU DONT NEED TO TOUCH THIS
- (IBAction)goToGreenView:(id)sender {
    BlankViewController *vc = [BlankViewController new];
    
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)goToBlueView:(id)sender {
    ViewController *vc = [[ViewController alloc] initWithTitle:@"blueVC"];;
    vc.view.backgroundColor = [UIColor blueColor];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
