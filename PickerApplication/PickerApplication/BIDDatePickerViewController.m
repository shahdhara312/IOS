//
//  BIDDatePickerViewController.m
//  PickerApplication
//
//  Created by Hardik Dhara on 7/18/14.
//  Copyright (c) 2014 DharaShah. All rights reserved.
//

#import "BIDDatePickerViewController.h"

@interface BIDDatePickerViewController ()

@end

@implementation BIDDatePickerViewController
@synthesize datePicker;
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
    NSDate *now = [NSDate date];
    [datePicker setDate:now animated:NO];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)buttonPressed {
    NSDate *selected = [datePicker date];
   // NSDate *time = [datePicker timeZone];
    NSString *message = [[NSString alloc] initWithFormat:
                         @"The date and time you selected is: %@", selected]; UIAlertView *alert = [[UIAlertView alloc]
                                                                                                    initWithTitle:@"Date and Time Selected" message:message
                                                                                                    delegate:nil cancelButtonTitle:@"Yes, I did." otherButtonTitles:nil];
    [alert show];
}
- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view. // e.g. self.myOutlet = nil;
    self.datePicker = nil;
}

@end
