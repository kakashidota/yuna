//
//  ViewController.m
//  KakashisApp
//
//  Created by Robin kamo on 2018-01-13.
//  Copyright © 2018 Robin kamo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *titleView;
@property (weak, nonatomic) IBOutlet UIButton *profileBtn;
@property (weak, nonatomic) IBOutlet UIButton *gameBtn;
@property (weak, nonatomic) IBOutlet UIButton *settingsBtn;
@property (weak, nonatomic) IBOutlet UIButton *globalBtn;
@property (weak, nonatomic) IBOutlet UIButton *redbullBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _profileBtn.layer.cornerRadius = 10;
    _gameBtn.layer.cornerRadius = 10;
    _settingsBtn.layer.cornerRadius = 10;
    _globalBtn.layer.cornerRadius = 10;
    _redbullBtn.layer.cornerRadius = 10;
    
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
