//
//  UIColorProcess.h
//  Blendash
//
//  Created by Mert Nesvat on 12/13/13.
//  Copyright (c) 2013 Mert Nesvat. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColorProcess : UIColor

+(CGFloat)findDistanceBetweenTwoColor:(UIColor *)first secondColor:(UIColor *)second;
+(UIColor *)getSimilarColorFromColor:(UIColor *)sample coordinatesIndicator:(int)indicatorC;
+(UIColor *)getDifferentColorFromColor:(UIColor *)sample;
+(UIColor *)getRandomColorFromColor:(UIColor *)lastColor coordinatesDifference:(int)distance;
+(UIColor *)getRandomColor;
@end
