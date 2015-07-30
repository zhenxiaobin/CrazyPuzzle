//
//  SMMainViewController.m
//  CrazyPuzzle
//
//  Created by tsmc on 15/7/28.
//  Copyright (c) 2015年 SevenMay. All rights reserved.
//

#import "SMMainViewController.h"

@interface SMMainViewController ()

@property (nonatomic, strong) UIImageView *upCloudImage;
@property (nonatomic, strong) UIImageView *downCloudImage;
@property (nonatomic, strong) UIImageView *eyeImage;
@property (nonatomic, strong) NSTimer *timer;

@end

@implementation SMMainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self showMainView];
}

- (void)showMainView
{
    // 背景图片设置
    UIImageView *bgImage = [[UIImageView alloc] initWithFrame:self.view.bounds];
    bgImage.image = [UIImage imageNamed:@"dl_beijing.jpg"];
    [self.view addSubview:bgImage];
    
    
    // 云彩图片设置
    UIView *upCloudView = [[UIView alloc] init];
    upCloudView.frame = CGRectMake(0, 60, self.view.bounds.size.width, 26);
    [self.view addSubview:upCloudView];
    _upCloudImage = [[UIImageView alloc] init];
    _upCloudImage.frame = CGRectMake(upCloudView.frame.size.width, 0, 120, 26);
    _upCloudImage.image = [UIImage imageNamed:@"dl_dh_yun1.png"];
    [upCloudView addSubview:_upCloudImage];
    
    UIView *downCloudView = [[UIView alloc] init];
    downCloudView.frame = CGRectMake(0, 150, self.view.bounds.size.width, 35);
    [self.view addSubview:downCloudView];
    _downCloudImage = [[UIImageView alloc] init];
    _downCloudImage.frame = CGRectMake(-120, 0, 120, 35);
    _downCloudImage.image = [UIImage imageNamed:@"dl_dh_yun2.png"];
    [downCloudView addSubview:_downCloudImage];
    [self addTimer];
    
    // logo图片设置
    UIView *logoView = [[UIView alloc] init];
    logoView.frame = CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height/2);
    [self.view addSubview:logoView];
    
    UIImageView *logoImage = [[UIImageView alloc] init];
    logoImage.frame = CGRectMake((self.view.bounds.size.width - 260)/2, 10, 260, 240);
    logoImage.image = [UIImage imageNamed:@"dl_logo.png"];
    [logoView addSubview:logoImage];
    
    _eyeImage = [[UIImageView alloc] init];
    _eyeImage.frame = CGRectMake(138, 78, 100, 40);
    _eyeImage.image = [UIImage imageNamed:@"dl_logo_01.png"];
    [logoView addSubview:_eyeImage];
    
    
//    UIImageView *openEyeImage = [[UIImageView alloc] init];
//    openEyeImage.frame = CGRectMake(138, 78, 100, 40);
//    openEyeImage.image = [UIImage imageNamed:@"dl_logo_01.png"];
//    [logoView addSubview:openEyeImage];
    
//    UIImageView *closeEyeImage = [[UIImageView alloc] init];
//    closeEyeImage.frame = CGRectMake(138, 78, 100, 40);
//    closeEyeImage.image = [UIImage imageNamed:@"dl_logo_02.png"];
//    [logoView addSubview:closeEyeImage];
    
    // 按钮设置
    UIView *btnView = [[UIView alloc] init];
    btnView.frame = CGRectMake(0, self.view.frame.size.height/2, self.view.frame.size.width, self.view.frame.size.height/2 - 50);
    [self.view addSubview:btnView];
    
    UIButton *emigratedBtn = [[UIButton alloc] init];
    emigratedBtn.frame = CGRectMake((self.view.frame.size.width - 187)/2, (btnView.frame.size.height - 50 * 3)/4, 187, 50);
    [emigratedBtn setImage:[UIImage imageNamed:@"dl_cgms_cn.png"] forState:UIControlStateNormal];
    [emigratedBtn setBackgroundImage:[UIImage imageNamed:@"hong.png"] forState:UIControlStateNormal];
    [emigratedBtn setBackgroundImage:[UIImage imageNamed:@"hong_sel.png"] forState:UIControlStateHighlighted];
    [btnView addSubview:emigratedBtn];
    
    UIButton *pkBtn = [[UIButton alloc] init];
    pkBtn.frame = CGRectMake((self.view.frame.size.width - 187)/2, (btnView.frame.size.height - 50 * 3)/4 * 2 + 50, 187, 50);
    [pkBtn setImage:[UIImage imageNamed:@"dl_PK.png"] forState:UIControlStateNormal];
    [pkBtn setBackgroundImage:[UIImage imageNamed:@"huang.png"] forState:UIControlStateNormal];
    [pkBtn setBackgroundImage:[UIImage imageNamed:@"huang_sel.png"] forState:UIControlStateHighlighted];
    [btnView addSubview:pkBtn];
    
    UIButton *phraseBtn = [[UIButton alloc] init];
    phraseBtn.frame = CGRectMake((self.view.frame.size.width - 187)/2, (btnView.frame.size.height - 50 * 3)/4 * 3 + 100, 187, 50);
    [phraseBtn setImage:[UIImage imageNamed:@"dl_diangu_cn.png"] forState:UIControlStateNormal];
    [phraseBtn setBackgroundImage:[UIImage imageNamed:@"diangu.png"] forState:UIControlStateNormal];
    [phraseBtn setBackgroundImage:[UIImage imageNamed:@"diangu_sel.png"] forState:UIControlStateHighlighted];
    [btnView addSubview:phraseBtn];
    
    // 选项功能设置
    UIView *toolView = [[UIView alloc] init];
    toolView.frame = CGRectMake(0, self.view.bounds.size.height - 50, self.view.bounds.size.width, 50);
    [self.view addSubview:toolView];
    
    // 周竞赛
    UIButton *competitionBtn = [[UIButton alloc] init];
    competitionBtn.frame = CGRectMake((toolView.frame.size.width - 34 * 5)/6, (toolView.frame.size.height - 33)/2, 34, 33);
    [competitionBtn setImage:[UIImage imageNamed:@"tb_zhoujingsai_w_cn.png"] forState:UIControlStateNormal];
    [competitionBtn setImageEdgeInsets:UIEdgeInsetsMake(33 - 19, 15, 0, -15)];
    [competitionBtn setBackgroundImage:[UIImage imageNamed:@"tb_zhoujingsai.png"] forState:UIControlStateNormal];
    [competitionBtn setBackgroundImage:[UIImage imageNamed:@"tb_zhoujingsai_sel.png"] forState:UIControlStateHighlighted];
    [toolView addSubview:competitionBtn];
    
    // 资料
    UIButton *informationBtn = [[UIButton alloc] init];
    informationBtn.frame = CGRectMake((toolView.frame.size.width - 34 * 5)/6 * 2 + 34, (toolView.frame.size.height - 33)/2, 34, 33);
    [informationBtn setImage:[UIImage imageNamed:@"tb_ziliao_w_cn.png"] forState:UIControlStateNormal];
    [informationBtn setImageEdgeInsets:UIEdgeInsetsMake(33 - 19, 15, 0, -15)];
    [informationBtn setBackgroundImage:[UIImage imageNamed:@"tb_ziliao.png"] forState:UIControlStateNormal];
    [informationBtn setBackgroundImage:[UIImage imageNamed:@"tb_ziliao_sel.png"] forState:UIControlStateHighlighted];
    [toolView addSubview:informationBtn];

    // 奖励
    UIButton *awardBtn = [[UIButton alloc] init];
    awardBtn.frame = CGRectMake((toolView.frame.size.width - 34 * 5)/6 * 3 + 34 * 2, (toolView.frame.size.height - 33)/2, 34, 33);
    [awardBtn setImage:[UIImage imageNamed:@"tb_jiangli_w_cn.png"] forState:UIControlStateNormal];
    [awardBtn setImageEdgeInsets:UIEdgeInsetsMake(33 - 19, 15, 0, -15)];
    [awardBtn setBackgroundImage:[UIImage imageNamed:@"tb_jiangli.png"] forState:UIControlStateNormal];
    [awardBtn setBackgroundImage:[UIImage imageNamed:@"tb_jiangli_sel.png"] forState:UIControlStateHighlighted];
    [toolView addSubview:awardBtn];
    
    // 排行榜
    UIButton *rankingListBtn = [[UIButton alloc] init];
    rankingListBtn.frame = CGRectMake((toolView.frame.size.width - 34 * 5)/6 * 4 + 34 * 3, (toolView.frame.size.height - 33)/2, 34, 33);
    [rankingListBtn setImage:[UIImage imageNamed:@"tb_phb_w_cn.png"] forState:UIControlStateNormal];
    [rankingListBtn setImageEdgeInsets:UIEdgeInsetsMake(33 - 19, 15, 0, -15)];
    [rankingListBtn setBackgroundImage:[UIImage imageNamed:@"tb_phb.png"] forState:UIControlStateNormal];
    [rankingListBtn setBackgroundImage:[UIImage imageNamed:@"tb_phb_sel.png"] forState:UIControlStateHighlighted];
    [toolView addSubview:rankingListBtn];

    // 设置
    UIButton *settingBtn = [[UIButton alloc] init];
    settingBtn.frame = CGRectMake((toolView.frame.size.width - 34 * 5)/6 * 5 + 34 * 4, (toolView.frame.size.height - 33)/2, 34, 33);
    [settingBtn setImage:[UIImage imageNamed:@"tb_shezhi_w_cn.png"] forState:UIControlStateNormal];
    [settingBtn setImageEdgeInsets:UIEdgeInsetsMake(33 - 19, 15, 0, -15)];
    [settingBtn setBackgroundImage:[UIImage imageNamed:@"tb_shezhi.png"] forState:UIControlStateNormal];
    [settingBtn setBackgroundImage:[UIImage imageNamed:@"tb_shezhi_sel.png"] forState:UIControlStateHighlighted];
    [toolView addSubview:settingBtn];
}

- (void)moveImage
{
    NSLog(@"-----");
    
    [UIView animateWithDuration:5 animations:^{
        _eyeImage.image = [UIImage imageNamed:@"dl_logo_02.png"];
    }];
    
    __block CGFloat changeValue = 0;
    changeValue = changeValue + 10;
    
    CGRect upCloudRect = _upCloudImage.frame;
    CGRect downCloudRect = _downCloudImage.frame;
    
    if (_upCloudImage.frame.origin.x == -120) {
        
        CGRect newUpCloudRect = CGRectMake(self.view.bounds.size.width, upCloudRect.origin.y, upCloudRect.size.width, upCloudRect.size.height);
        _upCloudImage.frame = newUpCloudRect;
        
        CGRect newDownCloudRect = CGRectMake(-120, downCloudRect.origin.y, downCloudRect.size.width, downCloudRect.size.height);
        _downCloudImage.frame = newDownCloudRect;
        
    } else {
        [UIView animateWithDuration:2 animations:^{
            CGRect newUpCloudRect = CGRectMake(upCloudRect.origin.x - changeValue, upCloudRect.origin.y, upCloudRect.size.width, upCloudRect.size.height);
            _upCloudImage.frame = newUpCloudRect;
            
            CGRect newDownCloudRect = CGRectMake(downCloudRect.origin.x + changeValue, downCloudRect.origin.y, downCloudRect.size.width, downCloudRect.size.height);
            _downCloudImage.frame = newDownCloudRect;
        }];
    }
}
/**
 *  开启定时器
 */
- (void)addTimer{

     self.timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(moveImage) userInfo:nil repeats:YES];
   [[NSRunLoop currentRunLoop] addTimer:self.timer forMode:NSRunLoopCommonModes];
}

/**
 *  关闭定时器
 */
- (void)removeTimer
{
     [self.timer invalidate];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
