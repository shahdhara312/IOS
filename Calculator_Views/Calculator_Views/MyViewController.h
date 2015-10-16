//
//  MyViewController.h
//  Calculator_Views
//
//  Created by Hardik Dhara on 7/31/14.
//  Copyright (c) 2014 DharaShah. All rights reserved.
//

#import "ViewController.h"

@interface MyViewController : ViewController
@property (strong, nonatomic) IBOutlet UIView *portrait;
@property (strong, nonatomic) IBOutlet UIView *landscape;
@property (strong, nonatomic) IBOutletCollection(UILabel) NSArray *lblresult;


- (IBAction)btnAddition:(id)sender;
- (IBAction)btnSubtraction:(id)sender;
- (IBAction)btnMultiplication:(id)sender;
- (IBAction)btnDivision:(id)sender;

- (IBAction)equalpressed:(id)sender;
- (IBAction)clearscreenpressed:(id)sender;
- (IBAction)digitPressed:(id)sender;

@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *btnAdd;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *btnSub;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *btnMul;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *btnDiv;


@end
