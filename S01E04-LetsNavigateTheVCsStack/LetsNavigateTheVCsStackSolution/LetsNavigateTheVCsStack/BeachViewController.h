//
//  BeachViewController.h
//  LetsNavigateTheVCsStack
//
//  Created by Mathieu Tan on 12/24/14.
//  Copyright (c) 2014 mataejoon. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "TreasureProtocol.h"

@interface BeachViewController : UIViewController

@property (nonatomic, strong)   NSString    *pirateImageName;
@property (nonatomic, strong)   NSString    *boatImageName;

@property (nonatomic, weak) id<TreasureProtocol> delegate;

@end
