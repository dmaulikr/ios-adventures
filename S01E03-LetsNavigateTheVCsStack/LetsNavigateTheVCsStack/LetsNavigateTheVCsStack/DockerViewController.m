//
//  DockerViewController.m
//  LetsNavigateTheVCsStack
//
//  Created by Mathieu Tan on 12/24/14.
//  Copyright (c) 2014 mataejoon. All rights reserved.
//

#import "DockerViewController.h"

#import "UIImage+Additions.h"

@interface DockerViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *boatImage;

@end

//NOTHING MUCH TO DO HERE LOOK AT the takeBoat Protocol implemented by the RootViewController
//IS [self.delegate takeBoat:self.boatImage.image.imageName]; called?
//IF NO it should be!

@implementation DockerViewController

//nothing to modify here
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"The dock";
    
    self.boatImage.image = [UIImage createWithImageNamed:@"pirate_ship"];
}

#pragma mark - UI Events

- (IBAction)grabTheBoat:(id)sender {
    //    get the name of the pirate ship image
    [self.delegate takeBoat:self.boatImage.image.imageName];
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
