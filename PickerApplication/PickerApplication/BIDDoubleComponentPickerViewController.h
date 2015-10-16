//
//  BIDDoubleComponentPickerViewController.h
//  PickerApplication
//
//  Created by Hardik Dhara on 7/18/14.
//  Copyright (c) 2014 DharaShah. All rights reserved.
//

#import <UIKit/UIKit.h>
#define kFillingComponent 0 
#define kBreadComponent 1

@interface BIDDoubleComponentPickerViewController : UIViewController
<UIPickerViewDelegate, UIPickerViewDataSource>
@property (strong, nonatomic) IBOutlet UIPickerView *doublePicker; @property (strong, nonatomic) NSArray *fillingTypes;
@property (strong, nonatomic) NSArray *breadTypes;
-(IBAction)buttonPressed;
@end
