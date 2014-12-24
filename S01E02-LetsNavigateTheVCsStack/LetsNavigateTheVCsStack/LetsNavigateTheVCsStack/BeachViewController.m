//
//  BeachViewController.m
//  LetsNavigateTheVCsStack
//
//  Created by Mathieu Tan on 12/24/14.
//  Copyright (c) 2014 mataejoon. All rights reserved.
//

#import "BeachViewController.h"

#import "UIImage+Additions.h"

@interface BeachViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *pirateImage;
@property (weak, nonatomic) IBOutlet UIImageView *boatImage;
@property (weak, nonatomic) IBOutlet UIImageView *treasureImage;
@property (weak, nonatomic) IBOutlet UIButton *treasureButton;
@property (weak, nonatomic) IBOutlet UILabel *noBoatNoTreasure;

@end

@implementation BeachViewController


//YOU NEED TO FIND A WAY TO MAKE THE canGrabTreasure method return true without modifying the current code
//LOOK AT the populateImages method
//IT SEEMS LIKE WE NEED A WAY TO POPULATE the pirateImage and the boatImage, try getting the images from the RootViewController

//nothing to modify here
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    [self populateImages];
    [self letPirateTakeTheTreasure:[self canGrabTreasure]];
}

//nothing to modify here
- (void)populateImages {
    self.treasureImage.image = [UIImage createWithImageNamed:@"treasure"];
    self.pirateImage.image = [UIImage createWithImageNamed:self.pirateImageName];
    self.boatImage.image = [UIImage createWithImageNamed:self.boatImageName];
}

//nothing to modify here
- (BOOL)canGrabTreasure {
    return (self.pirateImage.image != nil && self.boatImage.image != nil);
}

#pragma mark - UI Events

- (IBAction)grabTreasureButton:(id)sender {
//    use the treasure protocol to go back to the Root View Controller
//    hint: self.treasureImage.image.imageName
//    hint: treasure protocol
    [self.delegate returnAndTakeTreasure:self.treasureImage.image.imageName];
    
}






//YOU DONT NEED TO KNOW ABOUT THIS
- (void)letPirateTakeTheTreasure:(BOOL)canGrabTreasure {
    self.treasureButton.hidden = !canGrabTreasure;
    self.noBoatNoTreasure.hidden = canGrabTreasure;
}

@end
