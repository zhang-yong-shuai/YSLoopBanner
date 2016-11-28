//
//  YSLoopBanner.h
//  TestLoopScrollView
//
//  Created by zys on 2016/10/13.
//  Copyright © 2016年 张永帅. All rights reserved.
//

/** 
 *  Infinite loop banner：only use three imageViews 
 */

#import <UIKit/UIKit.h>

@interface YSLoopBanner : UIView

/// click action
@property (nonatomic, copy) void (^clickAction) (NSInteger curIndex) ;

/// data source
@property (nonatomic, copy) NSArray *imageURLStrings;


- (instancetype)initWithFrame:(CGRect)frame scrollDuration:(NSTimeInterval)duration;

@end
