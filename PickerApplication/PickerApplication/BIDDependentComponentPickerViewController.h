//
//  BIDDependentComponentPickerViewController.h
//  PickerApplication
//
//  Created by Hardik Dhara on 7/18/14.
//  Copyright (c) 2014 DharaShah. All rights reserved.
//

#import <UIKit/UIKit.h>
#define kStateComponent 0 
#define kZipComponent 1
@interface BIDDependentComponentPickerViewController : UIViewController
<UIPickerViewDelegate, UIPickerViewDataSource>
@property (strong, nonatomic) IBOutlet UIPickerView *picker;
@property (strong, nonatomic) NSDictionary *stateZips;
@property (strong, nonatomic) NSArray *states;
@property (strong, nonatomic) NSArray *zips;
- (IBAction) buttonPressed;
@end
