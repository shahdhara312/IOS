//
//  MyViewController.h
//  Calculator
//
//  Created by Hardik Dhara on 7/20/14.
//  Copyright (c) 2014 DharaShah. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *displayOutput;
@property (weak, nonatomic) IBOutlet UIButton *additionButton;
@property (weak, nonatomic) IBOutlet UIButton *subtractionButton;
@property (weak, nonatomic) IBOutlet UIButton *multiplicationButton;
@property (weak, nonatomic) IBOutlet UIButton *divisionButton;

- (IBAction)digitPressed:(id)sender;
- (IBAction)equalToPressed:(id)sender;
- (IBAction)clearscreenPressed:(id)sender;

- (IBAction)addition:(id)sender;
- (IBAction)subtraction:(id)sender;
- (IBAction)multiplication:(id)sender;
- (IBAction)division:(id)sender;
@property NSString *operationValue;

@end
