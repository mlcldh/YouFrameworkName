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
@property (nonatomic, strong) UIImageView *wxImageView;//
@property (nonatomic, strong) UIImageView *qqImageView;//
@property (nonatomic, strong) UILabel *titleLabel;//

@end

@implementation LCView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor yellowColor];
        [self userImageView];
        [self momentImageView];
//        [self wxImageView];
        [self qqImageView];
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
- (UIImageView *)wxImageView {
    if (!_wxImageView) {
        _wxImageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"lc_root_tab_moment_pressed"]];
        [self addSubview:_wxImageView];
        [_wxImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.center.equalTo(self);
        }];
    }
    return _wxImageView;
}
- (UIImageView *)qqImageView {
    if (!_qqImageView) {
        _qqImageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"YouFrameworkName.bundle/lc_group_invite_qq"]];
//        NSString *path = [[NSBundle mainBundle]pathForResource:@"YouFrameworkName" ofType:@"bundle"];
//        path = [path stringByAppendingString:@"/lc_group_invite_qq@2x.png"];
//        UIImage *image = [UIImage imageWithContentsOfFile:path];
//        _qqImageView = [[UIImageView alloc]initWithImage:image];
        [self addSubview:_qqImageView];
        [_qqImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.center.equalTo(self);
        }];
    }
    return _qqImageView;
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
