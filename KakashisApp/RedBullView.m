//
//  RedBullView.m
//  KakashisApp
//
//  Created by Robin kamo on 2018-01-16.
//  Copyright © 2018 Robin kamo. All rights reserved.
//

#import "RedBullView.h"

@interface RedBullView ()
@property (weak, nonatomic) IBOutlet UIStepper *stepper;
@property (weak, nonatomic) IBOutlet UILabel *babel;

@end

@implementation RedBullView
int counter;
- (void)viewDidLoad {
    [super viewDidLoad];
    int newCounterValue = [[NSUserDefaults standardUserDefaults]integerForKey:@"counterValue"];
    [_babel setText:[NSString stringWithFormat:@"Current ammount  %d", newCounterValue]];
    counter = newCounterValue;
    _stepper.value = newCounterValue;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)counter:(id)sender {
    counter = _stepper.value;
    [[NSUserDefaults standardUserDefaults]setInteger:_stepper.value forKey:@"counterValue"];
    [_babel setText:[NSString stringWithFormat:@"Current ammount %d", counter]];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
