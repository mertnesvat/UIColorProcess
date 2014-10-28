//
//  UIColorProcess.m
//  Blendash
//
//  Created by Mert Nesvat on 12/13/13.
//  Copyright (c) 2013 Mert Nesvat. All rights reserved.
//

#import "UIColorProcess.h"
#define ARC4RANDOM_MAX      0x100000000 //for random value between 0 - 1 float

#define SIMILAR 0.6f
#define SIMILARDIF 0.3f
#define DIFFERENT 2.0f
#define DIFFERENTDIF 1.0f

@implementation UIColorProcess


+(CGFloat)findDistanceBetweenTwoColor:(UIColor *)first secondColor:(UIColor *)second 
{
    CGFloat distance;
    CGFloat r1,g1,b1,a1,r2,g2,b2,a2;
    
    
    [first getRed:&r1 green:&g1 blue:&b1 alpha:&a1];
    
    [second getRed:&r2 green:&g2 blue:&b2 alpha:&a2];
    
    distance = sqrtf( powf(r1 - r2, 2) + powf(g1 - g2, 2) + powf(b1 - b2, 2) );
    
    if (distance == 0) {
        discance = sqrtf( powf(a1 - a2,2));
    }
    return distance;
}
+(UIColor *)getSimilarColorFromColor:(UIColor *)sample coordinatesIndicator:(int)indicatorC
{
    
    CGFloat r1,g1,b1,a1,r2,g2,b2,a2;
    
    [sample getRed:&r1 green:&g1 blue:&b1 alpha:&a1];
    double indicator;
    
    double val = ((double)arc4random() / ARC4RANDOM_MAX);
    double val2 = ((double)arc4random() / ARC4RANDOM_MAX);
    //NSLog(@"VAL = %f val2 = %f toplam = %f",val,val2,val+val2);
    
    //Random Red value is creating
    indicator = ( ((double)arc4random() / ARC4RANDOM_MAX) * SIMILAR ) - SIMILARDIF ;
    r2 = r1* (val+val2) + indicator;
    
    //Random Green value is creating
    indicator = ( ((double)arc4random() / ARC4RANDOM_MAX) * SIMILAR ) - SIMILARDIF ;
    g2 = g1* (val+val2) + indicator;
    
    //Random Blue value is creating
    indicator = ( ((double)arc4random() / ARC4RANDOM_MAX) * SIMILAR ) - SIMILARDIF ;
    b2 = b1* (val+val2) + indicator;

    //Random alpha
    indicator = ( ((double)arc4random() / ARC4RANDOM_MAX) * SIMILAR ) - SIMILARDIF ;
    a2 = a1* (val+val2) + indicator + 0.6;
    //NSLog(@"- indicator = %f",indicator);
    
    //NSLog(@"r2 = %f g2 = %f b2 = %f a2 = %f indicator = %f",r2,g2,b2,a2,indicator);
    UIColor *newColor = [[UIColor alloc] initWithRed:r2 green:g2 blue:b2 alpha:a2];
    
    return newColor;
}

+(UIColor *)getDifferentColorFromColor:(UIColor *)sample
{
    CGFloat r1,g1,b1,a1,r2,g2,b2,a2;
    
    [sample getRed:&r1 green:&g1 blue:&b1 alpha:&a1];
    double indicator;
    
    double val = ((double)arc4random() / ARC4RANDOM_MAX);
    double val2 = ((double)arc4random() / ARC4RANDOM_MAX);
    //NSLog(@"VAL = %f val2 = %f toplam = %f",val,val2,val+val2);
    NSLog(@"\n****************");
    indicator = ( ((double)arc4random() / ARC4RANDOM_MAX) *  DIFFERENT) - DIFFERENTDIF ;
    r2 = r1* (val+val2) + indicator;
    NSLog(@"\nindicator = %f",indicator);
    indicator = ( ((double)arc4random() / ARC4RANDOM_MAX) *  DIFFERENT) - DIFFERENTDIF ;
    g2 = g1* (val+val2) + indicator;
    NSLog(@"- indicator = %f",indicator);
    indicator = ( ((double)arc4random() / ARC4RANDOM_MAX) *  DIFFERENT) - DIFFERENTDIF ;
    b2 = b1* (val+val2) + indicator;
    NSLog(@"- indicator = %f",indicator);
    indicator = ( ((double)arc4random() / ARC4RANDOM_MAX) *  DIFFERENT) - DIFFERENTDIF ;
    a2 = a1* (val+val2) + indicator + 0.6;
    NSLog(@"- indicator = %f",indicator);
    
    NSLog(@"r2 = %f g2 = %f b2 = %f a2 = %f indicator = %f",r2,g2,b2,a2,indicator);
    UIColor *newColor = [[UIColor alloc] initWithRed:r2 green:g2 blue:b2 alpha:a2];
    
    return newColor;
}

                           
//Gets new color from deciding coordinates distance between i,j
+(UIColor *)getRandomColorFromColor:(UIColor *)lastColor coordinatesDifference:(int)distance
{
    UIColor *returnColor;
    float decide = arc4random();
    
    float a = (float)distance / 10;
    
    if (decide <  a) {
        returnColor = [self getDifferentColorFromColor:lastColor];
    }else{
        returnColor = [self getSimilarColorFromColor:lastColor coordinatesIndicator:distance];
    }
    
    return returnColor;
}
+(UIColor *)getRandomColor
{
    CGFloat r,g,b,a;
    r = arc4random() %255;
    g = arc4random() %255;
    b = arc4random() %255;
    a = arc4random() %255;
    
    NSLog(@"r=%f g=%f b=%f a=%f",r,g,b,a);
    
    return [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a/255.0f];
}

@end
