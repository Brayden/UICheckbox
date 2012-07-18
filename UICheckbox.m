//
//    UICheckbox.m
//
//    Author: Brayden Wilmoth
//    Edited: 07/17/2012
//
//    Copyright (c) 2012 Brayden Wilmoth.  All rights reserved.
//    http://www.github.com/brayden/
//

#import "UICheckbox.h"

@implementation UICheckbox
@synthesize uncheckedImage = _uncheckedImage;
@synthesize checkedImage = _checkedImage;
@synthesize isChecked = _isChecked;

-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.isChecked = FALSE;
        
        self.uncheckedImage = [UIImage imageNamed:@"uicheckbox_unchecked.png"];
        self.checkedImage = [UIImage imageNamed:@"uicheckbox_checked.png"];
    }
        
    return self;
}

-(void)drawRect:(CGRect)rect {
    UIImage *image;
    
    if(self.isChecked) image = [UIImage imageNamed:@"uicheckbox_checked.png"];
    else               image = [UIImage imageNamed:@"uicheckbox_unchecked.png"];
    
    [image drawInRect:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
}

-(BOOL)beginTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event {
    if(self.isChecked)  self.isChecked = FALSE;
    else                self.isChecked = TRUE;
    
    [self setNeedsDisplay];
    
    return TRUE;
}

-(void)setUncheckedImage:(UIImage *)uncheckedImage {
    self.uncheckedImage = uncheckedImage;
    [self setNeedsDisplay];
}

-(void)setCheckedImage:(UIImage *)checkedImage {
    self.checkedImage = checkedImage;
    [self setNeedsDisplay];
}

-(UIImage *)uncheckedImage {
    if(self.uncheckedImage)
        return self.uncheckedImage;
    else
        return [UIImage imageNamed:@"uicheckbox_unchecked.png"];
}

-(UIImage *)checkedImage {
    if(self.checkedImage)
        return self.checkedImage;
    else
        return [UIImage imageNamed:@"uicheckbox_checked.png"];
}


@end
