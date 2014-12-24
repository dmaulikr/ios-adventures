//
//  UIImageView+Additions.h
//  LetsNavigateTheVCsStack
//
//  Created by Mathieu Tan on 12/24/14.
//  Copyright (c) 2014 mataejoon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Additions)

@property (nonatomic, strong) NSString *imageName;

+ (UIImage *)createWithImageNamed:(NSString *)imageName;

@end