//
//  BIDDatePickerViewController.h
//  PickerApplication
//
//  Created by Hardik Dhara on 7/18/14.
//  Copyright (c) 2014 DharaShah. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BIDDatePickerViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIDatePicker *datePicker; - (IBAction)buttonPressed;
@end
