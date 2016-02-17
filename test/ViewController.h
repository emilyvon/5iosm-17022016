//
//  ViewController.h
//  test
//
//  Created by Mengying FENG on 17/02/2016.
//  Copyright (c) 2016 Mengying FENG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>
@property (retain, nonatomic) IBOutlet UILabel *titleLbl;

@property (retain, nonatomic) IBOutlet UITextField *textField;

@property (retain, nonatomic) IBOutlet UIButton *btn;
@property (retain, nonatomic) IBOutlet UILabel *sliderValueLbl;
@property (retain, nonatomic) IBOutlet UISlider *slider;
@property (retain, nonatomic) IBOutlet UITextField *firstNumberTextField;
@property (retain, nonatomic) IBOutlet UITextField *secondNumberTextField;
@property (retain, nonatomic) IBOutlet UILabel *resultLbl;

@end

