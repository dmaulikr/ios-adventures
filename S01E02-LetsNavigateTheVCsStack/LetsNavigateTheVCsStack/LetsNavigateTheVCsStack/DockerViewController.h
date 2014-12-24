//
//  DockerViewController.h
//  LetsNavigateTheVCsStack
//
//  Created by Mathieu Tan on 12/24/14.
//  Copyright (c) 2014 mataejoon. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "BoatProtocol.h"

@interface DockerViewController : UIViewController

@property (nonatomic, weak) id<BoatProtocol> delegate;

@end
