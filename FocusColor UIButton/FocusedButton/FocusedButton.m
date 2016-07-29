//
//  FocusedButton.m
//  Yoga
//
//  Created by Alex Overseer on 7/28/16.
//  Copyright © 2016 Softintercom. All rights reserved.
//

#import "FocusedButton.h"


@implementation FocusedButton

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        self.layer.cornerRadius = 5;
        self.backgroundColor = [UIColor lightGrayColor];
        self.focusColor = [UIColor redColor];
        self.unfocusedColor = [UIColor lightGrayColor];
    }
    return self;
}

- (void)buttonColors:(UIColor *)focusedColor andUnfocused:(UIColor *)unfocusedColor {
    
    self.focusColor = focusedColor;
    self.unfocusedColor = unfocusedColor;
    self.backgroundColor = unfocusedColor;
}

- (void)didUpdateFocusInContext:(UIFocusUpdateContext *)context withAnimationCoordinator:(UIFocusAnimationCoordinator *)coordinator {
    
    [coordinator addCoordinatedAnimations:^{
        
        if (self.focused) {
            
            self.backgroundColor = self.focusColor;
            self.transform = CGAffineTransformMakeScale(1.1, 1.1);
            self.layer.shadowColor = [UIColor blackColor].CGColor;
            self.layer.shadowOffset = CGSizeMake(0, 27);
            self.layer.shadowOpacity = 0.25;
            self.layer.shadowRadius = 10;
            self.clipsToBounds = NO;
            
        }
        else {
            
            self.transform = CGAffineTransformIdentity;
            self.backgroundColor = self.unfocusedColor;
            self.clipsToBounds = YES;
        }
        
    } completion:nil];
}


@end
