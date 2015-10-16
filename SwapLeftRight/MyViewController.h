//
//  MyViewController.h
//  SwapLeftRight
//
//  Created by Hardik Dhara on 7/14/14.
//  Copyright (c) 2014 DharaShah. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIView *portrait;
@property (strong, nonatomic) IBOutlet UIView *landscape;

@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *buttonLeft;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *buttonRight;

@property (weak, nonatomic) IBOutlet UILabel *lblPortrait;
@property (weak, nonatomic) IBOutlet UILabel *lblLandscape;

- (IBAction)buttonTapped:(id)sender;

@end
