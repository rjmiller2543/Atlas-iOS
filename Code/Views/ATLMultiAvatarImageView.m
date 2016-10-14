//
//  ATLMultiAvatarImageView.m
//  Pods
//
//  Created by Robert Miller on 10/13/16.
//
//

#import "ATLMultiAvatarImageView.h"

@interface ATLMultiAvatarImageView ()

@property(nonatomic,strong) ATLAvatarImageView *topLeftImageView;
@property(nonatomic,strong) ATLAvatarImageView *bottomRightImageView;

@end

@implementation ATLMultiAvatarImageView

-(instancetype)init
{
    self = [super init];
    if (self) {
        [self commintInit];
    }
    return self;
}

-(void)commintInit
{
    _topLeftImageView = [[ATLAvatarImageView alloc] init];
    _bottomRightImageView = [[ATLAvatarImageView alloc] init];
    
    _topLeftImageView.translatesAutoresizingMaskIntoConstraints = NO;
    _bottomRightImageView.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self addSubview:_topLeftImageView];
    [self addSubview:_bottomRightImageView];
    
    [self setupConstraintsForImageViews];
    
}

-(void)layoutSubviews {
    [super layoutSubviews];
    
    _topLeftImageView.layer.cornerRadius = _topLeftImageView.frame.size.height / 2;
    _bottomRightImageView.layer.cornerRadius = _bottomRightImageView.frame.size.height / 2;
    _topLeftImageView.clipsToBounds = YES;
    _bottomRightImageView.clipsToBounds = YES;
    _topLeftImageView.layer.borderColor = [UIColor whiteColor].CGColor;
    _topLeftImageView.layer.borderWidth = 1.0f;
    _bottomRightImageView.layer.borderColor = [UIColor whiteColor].CGColor;
    _bottomRightImageView.layer.borderWidth = 1.0f;
}

-(void)setupConstraintsForImageViews
{
    [self addConstraint:[NSLayoutConstraint constraintWithItem:_topLeftImageView
                                                     attribute:NSLayoutAttributeHeight
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeHeight
                                                    multiplier:0.66f
                                                      constant:0.0f]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:_topLeftImageView
                                                     attribute:NSLayoutAttributeWidth
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeWidth
                                                    multiplier:0.66f
                                                      constant:0.0f]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:_topLeftImageView
                                                     attribute:NSLayoutAttributeCenterX
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeCenterX
                                                    multiplier:0.66f
                                                      constant:0.0f]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:_topLeftImageView
                                                     attribute:NSLayoutAttributeCenterY
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeCenterY
                                                    multiplier:0.66f
                                                      constant:0.0f]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:_bottomRightImageView
                                                     attribute:NSLayoutAttributeHeight
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeHeight
                                                    multiplier:0.66f
                                                      constant:0.0f]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:_bottomRightImageView
                                                     attribute:NSLayoutAttributeWidth
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeWidth
                                                    multiplier:0.66f
                                                      constant:0.0f]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:_bottomRightImageView
                                                     attribute:NSLayoutAttributeCenterX
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeCenterX
                                                    multiplier:1.33f
                                                      constant:0.0f]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:_bottomRightImageView
                                                     attribute:NSLayoutAttributeCenterY
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:self
                                                     attribute:NSLayoutAttributeCenterY
                                                    multiplier:1.33f
                                                      constant:0.0f]];
}

- (void)updateAvatars
{
    _bottomRightImageView.avatarItem = _avatarItems.firstObject;
    _topLeftImageView.avatarItem = _avatarItems.lastObject;
    [self setNeedsDisplay];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
