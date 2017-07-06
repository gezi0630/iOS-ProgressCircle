//
//  ProgressView.m
//  重绘-下载进度
//
//  Created by MAC on 2017/6/22.
//  Copyright © 2017年 GuoDongge. All rights reserved.
//

#import "ProgressView.h"

@implementation ProgressView

-(void)setProgress:(CGFloat)progress
{
    _progress = progress;
    
    
    //系统会先创建与view相关联的上下文，然后再调用drawRect
    [self setNeedsDisplay];
    
}

//注意：drawRect不能手动调用，因为图形上下文我们自己创建不了，只能由系统帮我们创建，并且传递给我们
- (void)drawRect:(CGRect)rect {
 
    //创建贝瑟尔路径
    
    CGFloat radius = rect.size.width  * 0.5;
    CGPoint center = CGPointMake(radius, radius);
    
    CGFloat endA = -M_PI_2 + self.progress * M_PI * 2;
    
    
    UIBezierPath * path = [UIBezierPath bezierPathWithArcCenter:center radius:radius-5 startAngle:-M_PI_2 endAngle:endA clockwise:YES];
    
    [path stroke];
    
    
    
}


@end
