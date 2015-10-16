//
//  MyViewController.m
//  SwapLR
//
//  Created by Hardik Dhara on 7/15/14.
//  Copyright (c) 2014 DharaShah. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()

@end

@implementation MyViewController
@synthesize labelMsg;
@synthesize buttonLeft;
@synthesize buttonRight;

- (BOOL)shouldAutorotateToInterfaceOrientation:
(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    // Portrait upside down is not supported
    return (interfaceOrientation !=
            UIInterfaceOrientationPortraitUpsideDown);
}
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
  
    labelMsg.text  = [NSString stringWithFormat:@"%@ button Presssed",title];
   
}
@end
