//
//  LCView.m
//  YouFrameworkName
//
//  Created by MengLingChao on 2018/12/18.
//

#import "LCView.h"

@interface LCView ()

@property (nonatomic, strong) UIImageView *userImageView;//
@property (nonatomic, strong) UIImageView *momentImageView;//
@property (nonatomic, strong) UILabel *titleLabel;//

@end

@implementation LCView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor yellowColor];
        [self userImageView];
        [self momentImageView];
        [self titleLabel];
    }
    return self;
}
#pragma mark - Getter
- (UIImageView *)userImageView {
    if (!_userImageView) {
        _userImageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"lc_root_tab_me_pressed"]];
        [self addSubview:_userImageView];
        [_userImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.top.equalTo(self);
        }];
    }
    return _userImageView;
}
- (UIImageView *)momentImageView {
    if (!_momentImageView) {
        _momentImageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"lc_root_tab_moment_pressed"]];
        [self addSubview:_momentImageView];
        [_momentImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.top.equalTo(self);
        }];
    }
    return _momentImageView;
}
- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc]init];
        _titleLabel.text = @"Just A title";
        [self addSubview:_titleLabel];
        [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.userImageView.mas_bottom).offset(10);
            make.left.right.bottom.equalTo(self);
        }];
    }
    return _titleLabel;
}

@end