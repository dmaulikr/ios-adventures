//
//  ViewController.m
//  VCsAreEventHandlers
//
//  Created by Mathieu Tan on 12/23/14.
//  Copyright (c) 2014 mataejoon. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIAlertViewDelegate>

@property (weak, nonatomic) IBOutlet UISwitch *switch1;
@property (weak, nonatomic) IBOutlet UISwitch *switch2;
@property (weak, nonatomic) IBOutlet UISwitch *switch3;

@property (weak, nonatomic) IBOutlet UIButton *validateButton;

@end

@implementation ViewController

- (void)viewWillAppear:(BOOL)animated {
    [self showAlertViewWithTitle:@"Instructions" message:@"Disable two of the switches and validate the pink button to save the world" andCancel:@"Let's save the world!"];
}

- (IBAction)validate:(id)sender {
    NSLog(@"switch 1 is %@", [NSNumber numberWithBool:self.switch1.on]);
    NSLog(@"switch 1 is %@", [NSNumber numberWithBool:self.switch2.on]);
    NSLog(@"switch 1 is %@", [NSNumber numberWithBool:self.switch3.on]);
    
    [self endGameWithWin:[self checkCombination]];
}

- (BOOL)checkCombination {
   return (self.switch1.on == YES &&
           self.switch2.on == NO &&
           self.switch3.on == NO);
}

- (void)endGameWithWin:(BOOL)win {
    NSString *message;
    
    if (win) {
        self.view.backgroundColor = [UIColor whiteColor];
        message = @"You save the world :)";
    } else {
        self.view.backgroundColor = [UIColor redColor];
        message = @"Looser..";
    }
    
    [self showAlertViewWithTitle:@"Insert Coin" message:message andCancel:@"Again!"];
}

- (void)resetVC {
    self.view.backgroundColor = [UIColor blackColor];
    self.switch1.on = YES;
    self.switch2.on = YES;
    self.switch3.on = YES;
}

#pragma mark - AlertView Callbacks

- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex {
    [self resetVC];
}

#pragma mark - helpers

- (void)showAlertViewWithTitle:(NSString *)title message:(NSString *)message andCancel:(NSString *)cancel {
    UIAlertView * alert =[[UIAlertView alloc] initWithTitle:title message:message delegate:self cancelButtonTitle:cancel otherButtonTitles: nil];
    alert.alertViewStyle = UIAlertViewStyleDefault;
    alert.delegate = self;
    [alert show];
    
}
@end
