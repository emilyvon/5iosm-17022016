//
//  PostageViewController.m
//  test
//
//  Created by Mengying FENG on 17/02/2016.
//  Copyright (c) 2016 Mengying FENG. All rights reserved.
//

#import "PostageViewController.h"

@interface PostageViewController ()

@end

@implementation PostageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)calculatePostageBtnPressed:(UIButton *)sender {
    
    double weight = 0, RATE = 1.5, result = 0;
    
    weight = [_weightTextField.text doubleValue];
    result = weight * RATE;
    
    _resultLbl.text = [[NSString alloc] initWithFormat:@"$ %.2f", result];
    
    
    
}

- (void)dealloc {
    [_weightTextField release];
    [_resultLbl release];
    [super dealloc];
}
@end
