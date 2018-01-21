//
//  SettingsView.m
//  KakashisApp
//
//  Created by Robin kamo on 2018-01-15.
//  Copyright © 2018 Robin kamo. All rights reserved.
//

#import "SettingsView.h"

@interface SettingsView ()
@property (weak, nonatomic) IBOutlet UISlider *redSlider;
@property (weak, nonatomic) IBOutlet UISlider *greenSlider;
@property (weak, nonatomic) IBOutlet UISlider *blueSlider;
@property (weak, nonatomic) IBOutlet UIButton *saveButton;

@end

@implementation SettingsView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self refresh];
    float redColor = [[NSUserDefaults standardUserDefaults]floatForKey:@"redColor"];
    float greenColor = [[NSUserDefaults standardUserDefaults]floatForKey:@"greenColor"];
    float blueColor = [[NSUserDefaults standardUserDefaults]floatForKey:@"blueColor"];
    [self.view setBackgroundColor:[UIColor colorWithRed:redColor green:greenColor blue:blueColor alpha:1.0f]];

}

-(void)refresh{
    self.view.backgroundColor = [self currentColor];
}
- (IBAction)savedPressed:(id)sender {
    [[NSUserDefaults standardUserDefaults]setFloat:self.redSlider.value forKey:@"redColor"];
       [[NSUserDefaults standardUserDefaults]setFloat:self.greenSlider.value forKey:@"greenColor"];
       [[NSUserDefaults standardUserDefaults]setFloat:self.blueSlider.value forKey:@"blueColor"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)sliderChanged:(id)sender {
    [self refresh];
}
- (UIColor*)currentColor{
    return [UIColor colorWithRed:self.redSlider.value
                           green:self.greenSlider.value
                            blue:self.blueSlider.value
                           alpha:1.0];
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
