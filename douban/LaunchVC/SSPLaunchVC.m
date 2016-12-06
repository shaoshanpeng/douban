//
//  SSPLaunchVC.m
//  douban
//
//  Created by ShaoShanPeng on 2016/12/5.
//  Copyright © 2016年 ShaoShanPeng. All rights reserved.
//

#import "SSPLaunchVC.h"


@interface SSPLaunchVC ()
@property (weak, nonatomic) IBOutlet UIImageView *BGImage;
@property (weak, nonatomic) IBOutlet UIImageView *logoImage;


@end

@implementation SSPLaunchVC

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    [self.logoImage setNeedsLayout];
    
    [UIView animateWithDuration:3 delay:0 usingSpringWithDamping:0.7 initialSpringVelocity:0 options:0 animations:^{
        self.logoImage.centerY = 200;
        [self.logoImage layoutIfNeeded];
        
    } completion:^(BOOL finished) {
        //完成后发出通知改变rootViewController
               [[NSNotificationCenter defaultCenter]postNotificationName:@"changeRootController" object:nil];
    }];
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

@end
