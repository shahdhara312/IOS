//
//  MyViewController.m
//  Calculator_Views
//
//  Created by Hardik Dhara on 7/31/14.
//  Copyright (c) 2014 DharaShah. All rights reserved.
//

#import "MyViewController.h"
#define degreesToRadians(x) (M_PI * (x) / 180.0)
@interface MyViewController ()

@end

@implementation MyViewController

_Bool equalPressed = TRUE;
double firstdigit;
double seconddigit;
double result;
int opVal;

- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation) interfaceOrientation duration:(NSTimeInterval)duration {
    if (interfaceOrientation == UIInterfaceOrientationPortrait) { self.view = self.portrait;
        self.view.transform = CGAffineTransformIdentity; self.view.transform = CGAffineTransformMakeRotation(degreesToRadians(0)); self.view.bounds = CGRectMake(0.0, 0.0, 320.0, 460.0);
    }
    else if (interfaceOrientation == UIInterfaceOrientationLandscapeLeft) {
        self.view = self.landscape;
        self.view.transform = CGAffineTransformIdentity; self.view.transform = CGAffineTransformMakeRotation(degreesToRadians(-90)); self.view.bounds = CGRectMake(0.0, 0.0, 480.0, 300.0);
        
    }
    else if (interfaceOrientation ==
             UIInterfaceOrientationLandscapeRight) {
        self.view = self.landscape;
        self.view.transform = CGAffineTransformIdentity; self.view.transform = CGAffineTransformMakeRotation(degreesToRadians(90)); self.view.bounds = CGRectMake(0.0, 0.0, 480.0, 300.0);
    } }
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)btnAddition:(id)sender
{
    NSLog(@"btnadd");
    NSString *firstdigits;
    for(UILabel *lbl in _lblresult)
    {
        firstdigits = lbl.text;
        lbl.text = @"";
    }
    firstdigit = firstdigits.doubleValue;
     NSLog(@"firstdigit %g",firstdigit);
    opVal = 1;
  
    for(UIButton *btn in _btnAdd)
        btn.hidden = YES;
    
}

- (IBAction)btnSubtraction:(id)sender
{
    NSString *firstdigits;
    for(UILabel *lbl in _lblresult)
    {
        firstdigits = lbl.text;
        lbl.text = @"";
    }
    firstdigit = firstdigits.doubleValue;
    //NSLog(@"firstdigit %g",firstdigit);
    opVal = 2;
    
    for(UIButton *btn in _btnSub)
        btn.hidden = YES;
}

- (IBAction)btnMultiplication:(id)sender
{
    NSString *firstdigits;
    for(UILabel *lbl in _lblresult)
    {
        firstdigits = lbl.text;
        lbl.text = @"";
    }
    firstdigit = firstdigits.doubleValue;
    //NSLog(@"firstdigit %g",firstdigit);
    opVal = 3;
    
    for(UIButton *btn in _btnMul)
        btn.hidden = YES;
}

- (IBAction)btnDivision:(id)sender
{
    NSString *firstdigits;
    for(UILabel *lbl in _lblresult)
    {
        firstdigits = lbl.text;
        lbl.text = @"";
    }
    firstdigit = firstdigits.doubleValue;
    //NSLog(@"firstdigit %g",firstdigit);
    opVal = 4;
    
    for(UIButton *btn in _btnDiv)
        btn.hidden = YES;
}

- (IBAction)equalpressed:(id)sender
{
    equalPressed = TRUE;
    NSString *seconddigits;
    for(UILabel *lbl in _lblresult)
        seconddigits = lbl.text;
    //NSLog(@"seconddigit %@",seconddigits);
    seconddigit = seconddigits.doubleValue;
    //NSLog(@"Opval %d",opVal);
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
    
    for(UILabel *lbl in _lblresult)
        lbl.text = [NSString stringWithFormat:@"%g",result];
    NSLog(@"result:  %g",result);
}

- (IBAction)clearscreenpressed:(id)sender
{
    firstdigit = 0;
    seconddigit = 0;
    for(UILabel *lbl in _lblresult)
        lbl.text = @"";
    
    for(UIButton *btn in _btnAdd)
        btn.hidden = NO;
    for(UIButton *btn in _btnSub)
        btn.hidden = NO;
    for(UIButton *btn in _btnMul)
        btn.hidden = NO;
    for(UIButton *btn in _btnDiv)
        btn.hidden = NO;
}

- (IBAction)digitPressed:(id)sender {
    
    NSString *title = [sender titleForState:UIControlStateNormal];
    for(UILabel *lbl in _lblresult)
        lbl.text = [lbl.text stringByAppendingString:title];
}

@end
