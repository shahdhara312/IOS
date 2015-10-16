//
//  BIDDependentComponentPickerViewController.m
//  PickerApplication
//
//  Created by Hardik Dhara on 7/18/14.
//  Copyright (c) 2014 DharaShah. All rights reserved.
//

#import "BIDDependentComponentPickerViewController.h"

@interface BIDDependentComponentPickerViewController ()

@end

@implementation BIDDependentComponentPickerViewController
@synthesize picker; @synthesize stateZips; @synthesize states; @synthesize zips;
- (IBAction) buttonPressed {
    NSInteger stateRow = [picker selectedRowInComponent:kStateComponent]; NSInteger zipRow = [picker selectedRowInComponent:kZipComponent];
    NSString *state = [self.states objectAtIndex:stateRow]; NSString *zip = [self.zips objectAtIndex:zipRow];
    NSString *title = [[NSString alloc] initWithFormat: @"You selected zip code %@.", zip];
    NSString *message = [[NSString alloc] initWithFormat: @"%@ is in %@", zip, state];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title message:message
                                                   delegate:nil
                                                cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];
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
    NSBundle *bundle = [NSBundle mainBundle];
    NSURL *plistURL = [bundle URLForResource:@"statedictionary"
                               withExtension:@"plist"]; NSDictionary *dictionary = [NSDictionary
                                                                                    dictionaryWithContentsOfURL:plistURL];
    self.stateZips = dictionary;
    NSArray *components = [self.stateZips allKeys];
    NSArray *sorted = [components sortedArrayUsingSelector:
                       @selector(compare:)]; self.states = sorted;
    NSString *selectedState = [self.states objectAtIndex:0];
    NSArray *array = [stateZips objectForKey:selectedState];
    self.zips = array;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view. // e.g. self.myOutlet = nil;
    self.picker = nil;
    self.stateZips = nil;
    self.states = nil;
    self.zips = nil;
}
#pragma mark -
#pragma mark Picker Data Source Methods
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 2; }
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    if (component == kStateComponent) return [self.states count];
    return [self.zips count]; }
#pragma mark Picker Delegate Methods
- (NSString *)pickerView:(UIPickerView *)pickerView
             titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    if (component == kStateComponent)
        return [self.states objectAtIndex:row];
    return [self.zips objectAtIndex:row]; }
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row
       inComponent:(NSInteger)component { if (component == kStateComponent) {
    NSString *selectedState = [self.states objectAtIndex:row]; NSArray *array = [stateZips objectForKey:selectedState]; self.zips = array;
    [picker selectRow:0 inComponent:kZipComponent animated:YES]; [picker reloadComponent:kZipComponent];
}
}

@end
