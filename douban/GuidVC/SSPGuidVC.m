//
//  SSPGuidVC.m
//  douban
//
//  Created by ShaoShanPeng on 2016/12/5.
//  Copyright © 2016年 ShaoShanPeng. All rights reserved.
//

#import "SSPGuidVC.h"

static NSInteger imageCount = 2;

@interface SSPGuidVC () <UIScrollViewDelegate>

@property(nonatomic,strong) UIScrollView*   scrollView;

@end

@implementation SSPGuidVC

- (UIScrollView *)scrollView{
    if (!_scrollView) {
        _scrollView = [[UIScrollView alloc]initWithFrame:self.view.bounds];
        _scrollView.contentSize = CGSizeMake(ScreenWidth*imageCount, ScreenHeight);
        _scrollView.showsHorizontalScrollIndicator = NO;
        _scrollView.showsVerticalScrollIndicator = NO;
        _scrollView.bounces = NO;
        _scrollView.pagingEnabled = YES;
        _scrollView.delegate = self;
    }
    return _scrollView;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.scrollView];
    
    [self setupGuidImagesOnScrollView];
}


- (void)setupGuidImagesOnScrollView{
    for (int i=0; i<imageCount; i++) {
        NSString *imageName = [NSString stringWithFormat:@"guid_%d.png",i];
//        NSString *path = [[[NSBundle mainBundle] resourcePath]stringByAppendingPathComponent:imageName];
        
        UIImageView *guidImg = [[UIImageView alloc]initWithImage:[UIImage imageNamed:imageName]];
        guidImg.frame = CGRectMake(ScreenWidth *i, 0, ScreenWidth, ScreenHeight);
        
        [self.scrollView addSubview:guidImg];
    }
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    CGFloat offsetX = scrollView.contentOffset.x;
    if (offsetX/ScreenWidth == 2) {
        [self.scrollView removeFromSuperview];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
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
