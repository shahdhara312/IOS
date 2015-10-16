//
//  BIDSingleComponentPickerViewController.h
//  PickerApplication
//
//  Created by Hardik Dhara on 7/18/14.
//  Copyright (c) 2014 DharaShah. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BIDSingleComponentPickerViewController : UIViewController
<UIPickerViewDelegate, UIPickerViewDataSource>
@property (strong, nonatomic) IBOutlet UIPickerView *singlePicker; @property (strong, nonatomic) NSArray *pickerData;
- (IBAction)buttonPressed;
@end
