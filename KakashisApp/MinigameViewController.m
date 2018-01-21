//
//  MinigameViewController.m
//  KakashisApp
//
//  Created by Robin kamo on 2018-01-15.
//  Copyright © 2018 Robin kamo. All rights reserved.
//

#import "MinigameViewController.h"

@interface MinigameViewController ()
@property (weak, nonatomic) IBOutlet UISlider *guessSlider;
@property (weak, nonatomic) IBOutlet UILabel *currentNumber;
@property (weak, nonatomic) IBOutlet UIButton *guessButton;
@property (weak, nonatomic) IBOutlet UILabel *responseWindow;

@end

@implementation MinigameViewController


int sliderValue;
- (IBAction)guessAmmount:(id)sender {
    sliderValue  = [self getValue];
    [_currentNumber setText: [NSString stringWithFormat:@"%d", sliderValue]];
     
     
     }

-(int)getValue{
    return _guessSlider.value;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [_currentNumber setText: [NSString stringWithFormat:@"%d", [self getValue]]];
    [self newGame];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

int RNG;
-(int)RNG{
     RNG = arc4random_uniform(100) + 1;
    return RNG;
}

- (void)newGame{
    RNG = [self RNG];
    _guessSlider.value = 50;
}

- (IBAction)guessButton:(id)sender {
    if (sliderValue >RNG) {
        [_responseWindow setText: [NSString stringWithFormat:@"Guess Lower"]];
    } else if (sliderValue< RNG){
        [_responseWindow setText: [NSString stringWithFormat:@"Guess higher bruv"]];
    } else if (sliderValue == RNG){
        [_responseWindow setText: [NSString stringWithFormat:@"Nice one bruv!"]];
        [self newGame];
                            
    }
        

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
