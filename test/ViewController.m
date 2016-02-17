//
//  ViewController.m
//  test
//
//  Created by Mengying FENG on 17/02/2016.
//  Copyright (c) 2016 Mengying FENG. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
}
- (IBAction)btnPressed:(id)sender {
    //    _textField.text = _btn.titleLabel.text;
    
    NSString *userName = _textField.text;
    NSString *helloMessage = [[NSString alloc]initWithFormat:@"Hello, %@", userName];
    _titleLbl.text = helloMessage;
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Hello!" message:userName delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alert show];
    [alert release];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    if (textField == self.textField) {
        [textField resignFirstResponder];
    }
    return YES;
}
- (IBAction)sliderValueChanged:(id)sender {
    
    _sliderValueLbl.text = [NSString stringWithFormat:@"%f", self.slider.value];
    
}

- (IBAction)buttonPressed:(UIButton *)sender {
    //     NSLog(@"The button title is %@", sender.titleLabel.text);
    
    int n1, n2, result;
    
    n1 = [_firstNumberTextField.text intValue];
    n2 = [_secondNumberTextField.text intValue];
    
    
    NSString *title = sender.titleLabel.text;
    
    if ([title isEqual: @"Add"]) {
        
        result = n1 + n2;
        
    } else if ([title isEqual: @"Subtract"]) {
        result = n1 - n2;
    } else if ([title isEqual:@"Multiply"]) {
        result = n1 * n2;
        
    } else {
        result = n1 / n2;
        
    }
    _resultLbl.text = [[NSString alloc] initWithFormat:@"Result is : %d", result];
    
}



- (void)dealloc {
    
    [_textField release];
    [_btn release];
    [_titleLbl release];
    [_sliderValueLbl release];
    [_slider release];
    [_firstNumberTextField release];
    [_secondNumberTextField release];
    [_resultLbl release];
    [super dealloc];
}
@end
