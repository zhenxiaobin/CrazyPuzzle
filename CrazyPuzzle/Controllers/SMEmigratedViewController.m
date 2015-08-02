//
//  SMEmigratedViewController.m
//  CrazyPuzzle
//
//  Created by tsmc on 15/7/31.
//  Copyright (c) 2015年 SevenMay. All rights reserved.
//

#import "SMEmigratedViewController.h"

@interface SMEmigratedViewController ()

@property (nonatomic, strong) UIImageView *leftUpCloudImage;/**< 左上云彩 */
@property (nonatomic, strong) UIImageView *leftDownCloudImage;/**< 左下云彩 */
@property (nonatomic, strong) UIImageView *rightUpCloudImage;/**< 右上云彩 */
@property (nonatomic, strong) UIImageView *rightDownCloudImage;/**< 右下云彩 */

@end

@implementation SMEmigratedViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self showUIView];
}

- (void)showUIView
{
    // 设置背景
    UIScrollView *bgView = [[UIScrollView alloc] init];
    bgView.frame = CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height);
    bgView.bounces = NO;
    bgView.preservesSuperviewLayoutMargins = NO;
    bgView.alwaysBounceHorizontal = NO;
    bgView.showsHorizontalScrollIndicator = NO;
    bgView.contentSize = CGSizeMake(450 * self.view.bounds.size.height / 300 * 2, self.view.bounds.size.height);
    [self.view addSubview:bgView];
    
    UIImageView *firstMapImage = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 450 * self.view.bounds.size.height / 300, self.view.bounds.size.height)];
    [firstMapImage setImage:[UIImage imageNamed:@"ditu_01.jpg"]];
    [bgView addSubview:firstMapImage];
    
    UIImageView *secondMapImage = [[UIImageView alloc] initWithFrame:CGRectMake(450 * self.view.bounds.size.height / 300, 0, 450 * self.view.bounds.size.height / 300, self.view.bounds.size.height)];
    [secondMapImage setImage:[UIImage imageNamed:@"ditu_02.jpg"]];
    [bgView addSubview:secondMapImage];
    
    // 私塾
    UIButton *fz0Btn = [[UIButton alloc] initWithFrame:CGRectMake(80, 320, 190 * 0.6, 138 * 0.6)];
    UIImage *fz0Image = [UIImage imageNamed:@"dt_fz0.png"];
    [fz0Btn setImage:[self grayscale:fz0Image type:1] forState:UIControlStateNormal];
    [bgView addSubview:fz0Btn];
    
    // 擂台
    UIButton *arena1Btn = [[UIButton alloc] initWithFrame:CGRectMake(165, 245, 102 * 0.6, 83 * 0.6)];
    UIImage *flag1Image = [UIImage imageNamed:@"dt_qizi.png"];
    [arena1Btn setImage:[self grayscale:flag1Image type:1] forState:UIControlStateNormal];
    [arena1Btn setImageEdgeInsets:UIEdgeInsetsMake(-31 * 0.6, 102 * 0.6 / 2 - 2, 83 * 0.6 - 2, 102 * 0.6 / 2 - 29 * 0.6 + 2)];
    UIImage *arena1Image = [UIImage imageNamed:@"dt_leitai.png"];
    [arena1Btn setBackgroundImage:[self grayscale:arena1Image type:1] forState:UIControlStateNormal];
    [bgView addSubview:arena1Btn];
    
    // 府试
    UIButton *fz1Btn = [[UIButton alloc] initWithFrame:CGRectMake(50, 145, 214 * 0.6, 157 * 0.6)];
    UIImage *fz1Image = [UIImage imageNamed:@"dt_fz1.png"];
    [fz1Btn setImage:[self grayscale:fz1Image type:1] forState:UIControlStateNormal];
    [bgView addSubview:fz1Btn];
    
    // 院试
    UIButton *fz2Btn = [[UIButton alloc] initWithFrame:CGRectMake(105, 35, 215 * 0.6, 140 * 0.6)];
    UIImage *fz2Image = [UIImage imageNamed:@"dt_fz2.png"];
    [fz2Btn setImage:[self grayscale:fz2Image type:1] forState:UIControlStateNormal];
    [bgView addSubview:fz2Btn];
    
    // 擂台
    UIButton *arena2Btn = [[UIButton alloc] initWithFrame:CGRectMake(340, 55, 102 * 0.6, 83 * 0.6)];
    UIImage *flag2Image = [UIImage imageNamed:@"dt_qizi.png"];
    [arena2Btn setImage:[self grayscale:flag2Image type:1] forState:UIControlStateNormal];
    [arena2Btn setImageEdgeInsets:UIEdgeInsetsMake(-31 * 0.6, 102 * 0.6 / 2 - 2, 83 * 0.6 - 2, 102 * 0.6 / 2 - 29 * 0.6 + 2)];
    UIImage *arena2Image = [UIImage imageNamed:@"dt_leitai.png"];
    [arena2Btn setBackgroundImage:[self grayscale:arena2Image type:1] forState:UIControlStateNormal];
    [bgView addSubview:arena2Btn];
    
    // 乡试
    UIButton *fz3Btn = [[UIButton alloc] initWithFrame:CGRectMake(300, 140, 243 * 0.6, 138 * 0.6)];
    UIImage *fz3Image = [UIImage imageNamed:@"dt_fz3.png"];
    [fz3Btn setImage:[self grayscale:fz3Image type:1] forState:UIControlStateNormal];
    [bgView addSubview:fz3Btn];
    
    // 会试
    UIButton *fz4Btn = [[UIButton alloc] initWithFrame:CGRectMake(310, 280, 245 * 0.6, 141 * 0.6)];
    UIImage *fz4Image = [UIImage imageNamed:@"dt_fz4.png"];
    [fz4Btn setImage:[self grayscale:fz4Image type:1] forState:UIControlStateNormal];
    [bgView addSubview:fz4Btn];
    
    // 擂台
    UIButton *arena3Btn = [[UIButton alloc] initWithFrame:CGRectMake(510, 350, 102 * 0.6, 83 * 0.6)];
    UIImage *flag3Image = [UIImage imageNamed:@"dt_qizi.png"];
    [arena3Btn setImage:[self grayscale:flag3Image type:1] forState:UIControlStateNormal];
    [arena3Btn setImageEdgeInsets:UIEdgeInsetsMake(-31 * 0.6, 102 * 0.6 / 2 - 2, 83 * 0.6 - 2, 102 * 0.6 / 2 - 29 * 0.6 + 2)];
    UIImage *arena3Image = [UIImage imageNamed:@"dt_leitai.png"];
    [arena3Btn setBackgroundImage:[self grayscale:arena3Image type:1] forState:UIControlStateNormal];
    [bgView addSubview:arena3Btn];
    
    // 保和殿
    UIButton *fz5Btn = [[UIButton alloc] initWithFrame:CGRectMake(490, 225, 225 * 0.6, 167 * 0.6)];
    UIImage *fz5Image = [UIImage imageNamed:@"dt_fz5.png"];
    [fz5Btn setImage:[self grayscale:fz5Image type:1] forState:UIControlStateNormal];
    [bgView addSubview:fz5Btn];
    
    // 酒楼
    UIButton *boiteBtn = [[UIButton alloc] initWithFrame:CGRectMake(510, 65, 134 * 0.6, 106 * 0.6)];
    UIImage *flag4Image = [UIImage imageNamed:@"dt_qizi.png"];
    [boiteBtn setImage:[self grayscale:flag4Image type:1] forState:UIControlStateNormal];
    [boiteBtn setImageEdgeInsets:UIEdgeInsetsMake(-31 * 0.6 + 8, 134 * 0.6 / 2 - 2, 106 * 0.6 - 5, 134 * 0.6 / 2 - 29 * 0.6 + 5)];
    UIImage *boiteImage = [UIImage imageNamed:@"dt_jiulou.png"];
    [boiteBtn setBackgroundImage:[self grayscale:boiteImage type:1] forState:UIControlStateNormal];
    [bgView addSubview:boiteBtn];
    
    // 太和殿
    UIButton *fz6Btn = [[UIButton alloc] initWithFrame:CGRectMake(580, 40, 210 * 0.6, 207 * 0.6)];
    UIImage *fz6Image = [UIImage imageNamed:@"dt_fz6.png"];
    [fz6Btn setImage:[self grayscale:fz6Image type:1] forState:UIControlStateNormal];
    [bgView addSubview:fz6Btn];
    
    // 翰林院
    UIButton *fz7Btn = [[UIButton alloc] initWithFrame:CGRectMake(740, 60, 207 * 0.6, 150 * 0.6)];
    UIImage *fz7Image = [UIImage imageNamed:@"dt_fz7.png"];
    [fz7Btn setImage:[self grayscale:fz7Image type:1] forState:UIControlStateNormal];
    [bgView addSubview:fz7Btn];
    
    // 侍郎府
    UIButton *fz8Btn = [[UIButton alloc] initWithFrame:CGRectMake(765, 160, 207 * 0.6, 138 * 0.6)];
    UIImage *fz8Image = [UIImage imageNamed:@"dt_fz8.png"];
    [fz8Btn setImage:[self grayscale:fz8Image type:1] forState:UIControlStateNormal];
    [bgView addSubview:fz8Btn];
    
    // 御史符
    UIButton *fz9Btn = [[UIButton alloc] initWithFrame:CGRectMake(745, 260, 208 * 0.6, 142 * 0.6)];
    UIImage *fz9Image = [UIImage imageNamed:@"dt_fz9.png"];
    [fz9Btn setImage:[self grayscale:fz9Image type:1] forState:UIControlStateNormal];
    [bgView addSubview:fz9Btn];
    
    // 尚书府
    UIButton *fz10Btn = [[UIButton alloc] initWithFrame:CGRectMake(890, 315, 235 * 0.6, 157 * 0.6)];
    UIImage *fz10Image = [UIImage imageNamed:@"dt_fz10.png"];
    [fz10Btn setImage:[self grayscale:fz10Image type:1] forState:UIControlStateNormal];
    [bgView addSubview:fz10Btn];
    
    // 少保府
    UIButton *fz11Btn = [[UIButton alloc] initWithFrame:CGRectMake(1090, 260, 237 * 0.6, 159 * 0.6)];
    UIImage *fz11Image = [UIImage imageNamed:@"dt_fz11.png"];
    [fz11Btn setImage:[self grayscale:fz11Image type:1] forState:UIControlStateNormal];
    [bgView addSubview:fz11Btn];
    
    // 太师府
    UIButton *fz12Btn = [[UIButton alloc] initWithFrame:CGRectMake(1070, 95, 237 * 0.6, 159 * 0.6)];
    UIImage *fz12Image = [UIImage imageNamed:@"dt_fz12.png"];
    [fz12Btn setImage:[self grayscale:fz12Image type:1] forState:UIControlStateNormal];
    [bgView addSubview:fz12Btn];
    
    // 丞相府
    UIButton *fz13Btn = [[UIButton alloc] initWithFrame:CGRectMake(1260, 130, 234 * 0.6, 155 * 0.6)];
    UIImage *fz13Image = [UIImage imageNamed:@"dt_fz13.png"];
    [fz13Btn setImage:[self grayscale:fz13Image type:1] forState:UIControlStateNormal];
    [bgView addSubview:fz13Btn];
    
    // 未完待续
    UIButton *fz14Btn = [[UIButton alloc] initWithFrame:CGRectMake(1270, 280, 182 * 0.6, 125 * 0.6)];
    UIImage *fz14Image = [UIImage imageNamed:@"dt_fz14.png"];
    [fz14Btn setImage:[self grayscale:fz14Image type:1] forState:UIControlStateNormal];
    [bgView addSubview:fz14Btn];
    
    // 云彩
    _leftUpCloudImage = [[UIImageView alloc] init];
    _leftUpCloudImage.frame = CGRectMake(0, 0, 473 * 0.6, 581 * 0.6);
    [_leftUpCloudImage setImage:[UIImage imageNamed:@"zuoshang_01.png"]];
    [bgView addSubview:_leftUpCloudImage];
    
    _leftDownCloudImage = [[UIImageView alloc] init];
    _leftDownCloudImage.frame = CGRectMake(0, self.view.bounds.size.height - 766 * 0.6, 414 * 0.6, 766 * 0.6);
    [_leftDownCloudImage setImage:[UIImage imageNamed:@"zuoxia_01.png"]];
    [bgView addSubview:_leftDownCloudImage];

    _rightUpCloudImage = [[UIImageView alloc] init];
    _rightUpCloudImage.frame = CGRectMake(self.view.bounds.size.width - 426 * 0.6, 0, 426 * 0.6, 637 * 0.6);
    [_rightUpCloudImage setImage:[UIImage imageNamed:@"youshang_01.png"]];
    [bgView addSubview:_rightUpCloudImage];

    _rightDownCloudImage = [[UIImageView alloc] init];
    _rightDownCloudImage.frame = CGRectMake(self.view.bounds.size.width - 379 * 0.6, self.view.bounds.size.height - 697 * 0.6, 379 * 0.6, 697 * 0.6);
    [_rightDownCloudImage setImage:[UIImage imageNamed:@"youxia_01.png"]];
    [bgView addSubview:_rightDownCloudImage];
    
    [self cloudMove];
}

// 云彩移动
- (void)cloudMove
{
    [UIView animateWithDuration:2 animations:^{
        
        CGRect newLeftUpCloudRect = CGRectMake(0, 0, 0, 0);
        CGRect newLeftDownCloudRect = CGRectMake(0, self.view.bounds.size.height, 0, 0);
        CGRect newRightUpCloudRect = CGRectMake(self.view.bounds.size.width, 0, 0, 0);
        CGRect newRightDownCloudRect = CGRectMake(self.view.bounds.size.width, self.view.bounds.size.height, 0, 0);
        
        _leftUpCloudImage.frame = newLeftUpCloudRect;
        _leftDownCloudImage.frame = newLeftDownCloudRect;
        _rightUpCloudImage.frame = newRightUpCloudRect;
        _rightDownCloudImage.frame = newRightDownCloudRect;
    }];
}

// 彩图转黑白图
- (UIImage*)grayscale:(UIImage*)anImage type:(int)type {
    
    CGImageRef imageRef = anImage.CGImage;
    
    size_t width  = CGImageGetWidth(imageRef);
    size_t height = CGImageGetHeight(imageRef);
    
    size_t bitsPerComponent = CGImageGetBitsPerComponent(imageRef);
    size_t bitsPerPixel = CGImageGetBitsPerPixel(imageRef);
    
    size_t bytesPerRow = CGImageGetBytesPerRow(imageRef);
    
    CGColorSpaceRef colorSpace = CGImageGetColorSpace(imageRef);
    
    CGBitmapInfo bitmapInfo = CGImageGetBitmapInfo(imageRef);
    
    
    bool shouldInterpolate = CGImageGetShouldInterpolate(imageRef);
    
    CGColorRenderingIntent intent = CGImageGetRenderingIntent(imageRef);
    
    CGDataProviderRef dataProvider = CGImageGetDataProvider(imageRef);
    
    CFDataRef data = CGDataProviderCopyData(dataProvider);
    
    UInt8 *buffer = (UInt8*)CFDataGetBytePtr(data);
    
    NSUInteger  x, y;
    for (y = 0; y < height; y++) {
        for (x = 0; x < width; x++) {
            UInt8 *tmp;
            tmp = buffer + y * bytesPerRow + x * 4;
            
            UInt8 red,green,blue;
            red = *(tmp + 0);
            green = *(tmp + 1);
            blue = *(tmp + 2);
            
            UInt8 brightness;
            switch (type) {
                case 1:
                    brightness = (77 * red + 28 * green + 151 * blue) / 256;
                    *(tmp + 0) = brightness;
                    *(tmp + 1) = brightness;
                    *(tmp + 2) = brightness;
                    break;
                case 2:
                    *(tmp + 0) = red;
                    *(tmp + 1) = green * 0.7;
                    *(tmp + 2) = blue * 0.4;
                    break;
                case 3:
                    *(tmp + 0) = 255 - red;
                    *(tmp + 1) = 255 - green;
                    *(tmp + 2) = 255 - blue;
                    break;
                default:
                    *(tmp + 0) = red;
                    *(tmp + 1) = green;
                    *(tmp + 2) = blue;
                    break;
            }
        }
    }
    
    
    CFDataRef effectedData = CFDataCreate(NULL, buffer, CFDataGetLength(data));
    
    CGDataProviderRef effectedDataProvider = CGDataProviderCreateWithCFData(effectedData);
    
    CGImageRef effectedCgImage = CGImageCreate(
                                               width, height,
                                               bitsPerComponent, bitsPerPixel, bytesPerRow,
                                               colorSpace, bitmapInfo, effectedDataProvider,
                                               NULL, shouldInterpolate, intent);
    
    UIImage *effectedImage = [[UIImage alloc] initWithCGImage:effectedCgImage];
    
    CGImageRelease(effectedCgImage);
    
    CFRelease(effectedDataProvider);
    
    CFRelease(effectedData);
    
    CFRelease(data);
    
    return effectedImage;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
