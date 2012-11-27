//
//  UIMovieClip.m
//  MovieClipDemo
//
//  Created by binwong on 12-10-31.
//  Copyright (c) 2012年 binwong. All rights reserved.
//

#import "UIMovieClip.h"

@implementation UIMovieClip

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        currentFrame = 1;
    }
    return self;
}

/**
 * 播放
 **/
- (void) play {
    [self clearTimer];
    
    timer = [NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(updateFrame) userInfo:nil repeats:YES];
}

/**
 * 停止
 */
- (void) stop {
    [self clearTimer];
}

/**
 * 跳转到制定帧并播放
 **/
- (void) gotoAndPlay:(int)frame {
    currentFrame = frame;
    
    [self play];
}
/**
 * 跳转到制定帧并停止
 **/
- (void) gotoAndStop:(int)frame {
    currentFrame = frame;
    
    [self stop];
}

- (void) clearTimer {
    [timer invalidate];
    [timer dealloc];
}

- (void) updateFrame {
    if (currentFrame > [self.imagesData count]) {
        currentFrame = 1;
    }
    
    NSString *imageName = [self.imagesData objectAtIndex:currentFrame-1];
    UIImage *image = [UIImage imageWithContentsOfFile:[NSString stringWithFormat:@"%@/%@", [[NSBundle mainBundle] bundlePath], imageName]];
    if (imageView == nil) {
        imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, image.size.width, image.size.height)];
        [self addSubview:imageView];
    }
    //imageView.image = nil;
    imageView.image = image;
    
    currentFrame++;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
