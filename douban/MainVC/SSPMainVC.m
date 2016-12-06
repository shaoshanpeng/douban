//
//  SSPMainVC.m
//  douban
//
//  Created by ShaoShanPeng on 2016/12/5.
//  Copyright © 2016年 ShaoShanPeng. All rights reserved.
//

#import "SSPMainVC.h"
#import "SSPGuidVC.h"

@interface SSPMainVC ()

@end

@implementation SSPMainVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupGuidView];
    
}

- (void)setupGuidView{
    SSPGuidVC *guidVC = [[SSPGuidVC alloc]init];
    [self.navigationController.view addSubview:guidVC.view];
}

@end
