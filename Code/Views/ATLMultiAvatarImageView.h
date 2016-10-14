//
//  ATLMultiAvatarImageView.h
//  Pods
//
//  Created by Robert Miller on 10/13/16.
//
//

#import <UIKit/UIKit.h>
#import "ATLAvatarImageView.h"

@interface ATLMultiAvatarImageView : UIView

@property(nonatomic,strong) NSArray<id<ATLAvatarItem>> *avatarItems;

-(void)updateAvatars;

@end
