//
//  BIDCustomPickerViewController.h
//  PickerApplication
//
//  Created by Hardik Dhara on 7/18/14.
//  Copyright (c) 2014 DharaShah. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BIDCustomPickerViewController : UIViewController
<UIPickerViewDataSource, UIPickerViewDelegate>
@property (strong, nonatomic) IBOutlet UIPickerView *picker;
@property (strong, nonatomic) IBOutlet UILabel *winLabel;
@property (strong, nonatomic) NSArray *column1;
@property (strong, nonatomic) NSArray *column2;
@property (strong, nonatomic) NSArray *column3;
@property (strong, nonatomic) NSArray *column4;
@property (strong, nonatomic) NSArray *column5;
@property (strong, nonatomic) IBOutlet UIButton *button;
- (IBAction)spin;
@end
