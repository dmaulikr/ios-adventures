//
//  RootViewController.m
//  LetsNavigateTheVCsStack
//
//  Created by Mathieu Tan on 12/23/14.
//  Copyright (c) 2014 mataejoon. All rights reserved.
//

#import "RootViewController.h"

#import "DockerViewController.h"
#import "BeachViewController.h"

#import "UIImage+Additions.h"

#import "TreasureProtocol.h"
#import "BoatProtocol.h"

@interface RootViewController () <BoatProtocol, TreasureProtocol>

@property (weak, nonatomic) IBOutlet UILabel *onBoatStatusLabel;
@property (weak, nonatomic) IBOutlet UIButton *navigateToTreasureButton;

@property (weak, nonatomic) IBOutlet UIImageView *pirateImage;
@property (weak, nonatomic) IBOutlet UIImageView *boatImage;
@property (weak, nonatomic) IBOutlet UIImageView *treasureImage;

@end

//in order to complete this you need to make the other VCs trigger the BoatProtocol and the TreasureProtocol
//  - (void)takeBoat:(NSString *)boatName {
//  - (void)returnAndTakeTreasure:(NSString *)treasureName

//Look at the navigation methods
//  - (void)triggerModalVC {
//  - (IBAction)navigateToTreasure:(id)sender {


@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    UIBarButtonItem *searchButton = [[UIBarButtonItem alloc] initWithTitle:@"Boat" style:UIBarButtonItemStyleDone target:self action:@selector(triggerModalVC)];
    self.navigationItem.rightBarButtonItem = searchButton;
    
    [self showInstructions];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self populatePirateImage];
}


#pragma mark - Boat callbacks

//Boat Protocol: is everything setup correctly so that this callback will be called?
// verify that this is called
- (void)takeBoat:(NSString *)boatName {
    self.boatImage.image = [UIImage createWithImageNamed:boatName];
    
    if (self.boatImage.image) {
        [self enableNavigationToTreasureLocation];
    }
}


#pragma mark - Treasure callbacks

//Treasure Protocol: is everything setup correctly so that this callback will be called?
// verify that this is called
- (void)returnAndTakeTreasure:(NSString *)treasureName {
    self.treasureImage.image = [UIImage createWithImageNamed:treasureName];

    if (self.treasureImage.image) {
        [self.navigationController popViewControllerAnimated:YES];
        [self showWinningMessage];
    }
}


#pragma mark - Navigation

- (void)triggerModalVC {
    DockerViewController *vc = [DockerViewController new];
//    might have something to do here
    vc.delegate = self;
    [self.navigationController presentViewController:vc animated:YES completion:nil];
}

- (IBAction)navigateToTreasure:(id)sender {
    BeachViewController *vc = [BeachViewController new];
//    you need to configure the beachViewController properly
//    in order for to retrieve the treasure you need to pass it the boatImageName and the pirateImageName
//    and make sure that it is able to call the RootViewController callback used to retrieve the treasure
    vc.boatImageName = self.boatImage.image.imageName;
    vc.pirateImageName = self.pirateImage.image.imageName;
    vc.delegate = self;
    [self.navigationController pushViewController:vc animated:YES];
}


// YOU DONT NEED TO LOOK AT THIS PART

#pragma mark - UI
- (void)populatePirateImage {
    self.pirateImage.image = [UIImage createWithImageNamed:@"9gag_pirate"];
}

- (void)enableNavigationToTreasureLocation {
    BOOL canNavigate = self.boatImage.image != nil;
    
    self.navigateToTreasureButton.enabled = canNavigate;
    if (canNavigate) {
        self.onBoatStatusLabel.text = @"I am on the boat, allright next step!";
        self.navigateToTreasureButton.backgroundColor = [UIColor blueColor];
        [self.navigateToTreasureButton setTitle:@"Let's find the treasure" forState:UIControlStateNormal];
    }
}

#pragma mark - Helpers

- (void)showInstructions {
    [self showAlertViewWithTitle:@"Instructions" message:@"Your goal is to take the treasure and display it in this screen, in order to do that you first need to take your boat" andCancel:@"Got it"];
}

- (void)showWinningMessage {
    [self showAlertViewWithTitle:@"RICHHHHH" message:@"You got the treasure captain!" andCancel:@"I know!"];
}

- (void)showAlertViewWithTitle:(NSString *)title message:(NSString *)message andCancel:(NSString *)cancel {
    UIAlertView * alert =[[UIAlertView alloc] initWithTitle:title message:message delegate:nil cancelButtonTitle:cancel otherButtonTitles: nil];
    alert.alertViewStyle = UIAlertViewStyleDefault;
    alert.delegate = self;
    [alert show];
}

@end
