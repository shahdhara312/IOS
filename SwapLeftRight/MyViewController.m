//
//  MyViewController.m
//  SwapLeftRight
//
//  Created by Hardik Dhara on 7/14/14.
//  Copyright (c) 2014 DharaShah. All rights reserved.
//

#import "MyViewController.h"
#define degreesToRadians(x) (M_PI * (x) / 180.0)
@interface MyViewController ()

@end

@implementation MyViewController
@synthesize portrait;
@synthesize landscape;
@synthesize buttonLeft;
@synthesize buttonRight;
@synthesize lblPortrait;
@synthesize lblLandscape;

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

- (IBAction)buttonTapped:(id)sender
{
    NSString *title = [sender titleForState:UIControlStateNormal];
    
   // labelMsg.text  = [NSString stringWithFormat:@"%@ button Presssed",title];
   //if ([self.buttonLeft containsObject:sender])
   //{
       lblPortrait.text  = [NSString stringWithFormat:@"%@ button Presssed",title];
       lblLandscape.text= [NSString stringWithFormat:@"%@ button Presssed",title];
   //}
    /*else
    {
        lblLandscape.text = @"Right button pressed";
        lblPortrait.text= @"Right button pressed";
    }*/
    
}
- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation) interfaceOrientation duration:(NSTimeInterval)duration
{
    if (interfaceOrientation == UIInterfaceOrientationPortrait)
    {
        self.view = self.portrait;
        self.view.transform = CGAffineTransformIdentity; self.view.transform = CGAffineTransformMakeRotation(degreesToRadians(0)); self.view.bounds = CGRectMake(0.0, 0.0, 320.0, 460.0);
    }
    else if (interfaceOrientation == UIInterfaceOrientationLandscapeLeft)
    {
       
        self.view = self.landscape;
        self.view.transform = CGAffineTransformIdentity; self.view.transform = CGAffineTransformMakeRotation(degreesToRadians(-90)); self.view.bounds = CGRectMake(0.0, 0.0, 480.0, 300.0);
    }
    else if (interfaceOrientation ==
             UIInterfaceOrientationLandscapeRight)
    {
        
        self.view = self.landscape;
        self.view.transform = CGAffineTransformIdentity; self.view.transform = CGAffineTransformMakeRotation(degreesToRadians(90)); self.view.bounds = CGRectMake(0.0, 0.0, 480.0, 300.0);
    }
  
}
@end
