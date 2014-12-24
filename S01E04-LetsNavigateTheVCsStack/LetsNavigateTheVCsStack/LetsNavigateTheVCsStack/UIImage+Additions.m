//
//  UIImageView+Additions.m
//  LetsNavigateTheVCsStack
//
//  Created by Mathieu Tan on 12/24/14.
//  Copyright (c) 2014 mataejoon. All rights reserved.
//

#import <objc/runtime.h>

#import "UIImage+Additions.h"

@implementation UIImage (Additions)
@dynamic imageName;

static char const * const imageNameKey = "kImageNameKey";

- (NSString *)imageName {
    return objc_getAssociatedObject(self, imageNameKey);
}

- (void)setImageName:(NSString *)imageName {
    objc_setAssociatedObject(self, imageNameKey, imageName, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

+ (UIImage *)createWithImageNamed:(NSString *)imageName {
    UIImage *img = [UIImage imageNamed:imageName];
    img.imageName = imageName;
    return img;
}

@end