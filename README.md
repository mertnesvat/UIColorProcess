* * *
>#UIColorProcess #

##reserves some simple color process..

###ColorProcess class inherited from UIColor class and added some features like find difference from two different color


>+(CGFloat)findDistanceBetweenTwoColor:(UIColor *)first secondColor:(UIColor *)second;

>+(UIColor *)getSimilarColorFromColor:(UIColor *)sample coordinatesIndicator:(int)indicatorC;

>+(UIColor *)getDifferentColorFromColor:(UIColor *)sample;

>+(UIColor *)getRandomColorFromColor:(UIColor *)lastColor coordinatesDifference:(int)distance;

>+(UIColor *)getRandomColor;

* * * 

>##Methods

>![snipshot](http://s24.postimg.org/jh9pmtmc5/Screen_Shot_2013_12_24_at_1_04_59_PM.png "Color Samples")

>each line sample is one method
###+(CGFloat)findDistanceBetweenTwoColor:(UIColor *)first secondColor:(UIColor *)second;
>Compares two different color and returns distance between two of them
<br>for example <br><code>NSLog(@"distance = %f",[UIColorProcess findDistanceBetweenTwoColor:[UIColor redColor] secondColor:[UIColor blueColor]]); </code><br>returns <code>distance = 1.414214</code>

>####Detail<br>
Method uses distance^2 = (r1-r2)^2 + (g1-g2)^2 + (b1-b2)^2 diagram to compare two different color.

###+(UIColor *)getSimilarColorFromColor:(UIColor *)sample coordinatesIndicator:(int)indicatorC;
>Gets similar color from color sample and second paramater is indicator which helps you to how differece you want to create new color. Returns UIColor;

###+(UIColor *)getDifferentColorFromColor:(UIColor *)sample;
>Gets different color from color sample.Returns UIColor.

###+(UIColor *)getRandomColorFromColor:(UIColor *)lastColor coordinatesDifference:(int)distance;
>Gets random color from your color sample and distance.Returns UIColor.

###+(UIColor *)getRandomColor;
>Gets random color.Returns UIColor.



<br>
* * *
###Installation
>You can add ColorProcess folder to your project and use.
<br><br>
* * *
<br>Many Thanks.
