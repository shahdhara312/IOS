//
//  MyViewController.h
//  SwapLR
//
//  Created by Hardik Dhara on 7/15/14.
//  Copyright (c) 2014 DharaShah. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *buttonLeft;
@property (weak, nonatomic) IBOutlet UIButton *buttonRight;
@property (weak, nonatomic) IBOutlet UILabel *labelMsg;
- (IBAction)buttonTapped:(id)sender;

@end
