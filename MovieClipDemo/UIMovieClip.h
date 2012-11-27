//
//  UIMovieClip.h
//  MovieClipDemo
//
//  Created by binwong on 12-10-31.
//  Copyright (c) 2012年 binwong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIMovieClip : UIImageView
{
@private
    UIImageView *imageView;
    NSTimer *timer;
    int currentFrame;
    
}

@property(retain, readwrite) NSMutableArray *imagesData;
@property(retain, readwrite) NSNumber *frameRate;

- (void) play;
- (void) stop;
- (void) gotoAndPlay:(int)frame;
- (void) gotoAndStop:(int)frame;
@end
