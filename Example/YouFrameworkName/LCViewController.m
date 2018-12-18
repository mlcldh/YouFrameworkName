//
//  LCViewController.m
//  YouFrameworkName
//
//  Created by 孟令超 on 12/14/2018.
//  Copyright (c) 2018 孟令超. All rights reserved.
//

#import "LCViewController.h"
#import "Masonry.h"
#import "LCView.h"

@interface LCViewController ()

@property (nonatomic, strong) LCView *aView;//

@end

@implementation LCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self aView];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - Getter
- (LCView *)aView {
    if (!_aView) {
        _aView = [[LCView alloc]init];
        [self.view addSubview:_aView];
        [_aView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.view);
            make.top.equalTo(self.mas_topLayoutGuideBottom);
        }];
    }
    return _aView;
}

@end
