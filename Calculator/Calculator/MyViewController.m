//
//  MyViewController.m
//  Calculator
//
//  Created by Hardik Dhara on 7/20/14.
//  Copyright (c) 2014 DharaShah. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()

@end

@implementation MyViewController
@synthesize displayOutput = _displayOutput;
@synthesize additionButton = _additionButton;
@synthesize subtractionButton = _subtractionButton;
@synthesize multiplicationButton = _multiplicationButton;
@synthesize divisionButton = _divisionButton;
_Bool equalPressed = TRUE;
double firstdigit;
double seconddigit;
double result;
int opVal;

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    firstdigit = 0;
    seconddigit = 0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)digitPressed:(id)sender
{
    if (equalPressed) {
        _displayOutput.text = @"";
        equalPressed = FALSE;
        
    }
    NSString *digit = [sender currentTitle];
    _displayOutput.text = [_displayOutput.text stringByAppendingString:digit];
}

- (IBAction)equalToPressed:(id)sender
{
    equalPressed = TRUE;
    NSString *seconddigits = _displayOutput.text;
    seconddigit = seconddigits.doubleValue;
    if (opVal == 1) {
        result = firstdigit + seconddigit;
    }
    else if (opVal == 2){
        result = firstdigit - seconddigit;
    }
    else if (opVal == 3){
        result = firstdigit * seconddigit;
    }
    else if (opVal == 4){
        result = firstdigit / seconddigit;
    }
    else{
        result = 0;
    }
  
    _displayOutput.text = [NSString stringWithFormat:@"%9.2f",result];
    _additionButton.enabled = TRUE;
    _subtractionButton.enabled = TRUE;
    _multiplicationButton.enabled = TRUE;
    _divisionButton.enabled = TRUE;
    
}

- (IBAction)clearscreenPressed:(id)sender
{
    firstdigit = 0;
    seconddigit = 0;
    _displayOutput.text = @"0";
    
    _additionButton.enabled = TRUE;
    _subtractionButton.enabled = TRUE;
    _multiplicationButton.enabled = TRUE;
    _divisionButton.enabled = TRUE;
    
    _additionButton.hidden = NO;
    _subtractionButton.hidden = NO;
    _multiplicationButton.hidden = NO;
    _divisionButton.hidden = NO;
}

- (IBAction)addition:(id)sender
{
    NSString *firstdigits = _displayOutput.text;
    firstdigit = firstdigits.doubleValue;
    _displayOutput.text = @"";
    opVal = 1;
    _additionButton.hidden = YES;
    
    _subtractionButton.enabled = FALSE;
    _multiplicationButton.enabled = FALSE;
    _divisionButton.enabled = FALSE;
}

- (IBAction)subtraction:(id)sender
{
    NSString *firstdigits = _displayOutput.text;
    firstdigit = firstdigits.doubleValue;
    _displayOutput.text = @"";
    opVal = 2;
    _subtractionButton.hidden = YES;
    
    _additionButton.enabled = FALSE;
    _multiplicationButton.enabled = FALSE;
    _divisionButton.enabled = FALSE;
}

- (IBAction)multiplication:(id)sender
{
    NSString *firstdigits = _displayOutput.text;
    firstdigit = firstdigits.doubleValue;
    _displayOutput.text = @"";
    opVal = 3;
    _multiplicationButton.hidden = YES;
    
    _subtractionButton.enabled = FALSE;
    _additionButton.enabled = FALSE;
    _divisionButton.enabled = FALSE;
}

- (IBAction)division:(id)sender
{
    NSString *firstdigits = _displayOutput.text;
    firstdigit = firstdigits.doubleValue;
    _displayOutput.text = @"";
    opVal = 4;
    _divisionButton.hidden = YES;
    
    _subtractionButton.enabled = FALSE;
    _multiplicationButton.enabled = FALSE;
    _additionButton.enabled = FALSE;
}

/*- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
 {
 self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
 if (self) {
 // Custom initialization
 }
 return self;
 }
 */
@end
