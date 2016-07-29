//
//  FocusedButton.h
//  Yoga
//
//  Created by Alex Overseer on 7/28/16.
//  Copyright © 2016 Softintercom. All rights reserved.
//

#import <UIKit/UIKit.h>

//IB_DESIGNABLE

@interface FocusedButton : UIButton

@property(nonatomic, strong) UIColor *focusColor;
@property(nonatomic, strong) UIColor *unfocusedColor;

- (void)buttonColors:(UIColor *)focusedColor andUnfocused:(UIColor *)unfocusedColor;

@end
