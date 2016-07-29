//
//  ViewController.m
//  FocusColor UIButton
//
//  Created by Alex Overseer on 7/29/16.
//  Copyright © 2016 Alex Overseer. All rights reserved.
//

#import "ViewController.h"
#import "FocusedButton.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet FocusedButton *customButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.customButton buttonColors:[UIColor orangeColor]
                      andUnfocused:[UIColor blackColor]];
}


@end
