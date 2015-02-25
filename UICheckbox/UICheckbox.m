//
//    UICheckbox.m
//
//    Author:    Brayden Wilmoth
//    Co-Author: Jordan Perry
//    Edited:    07/17/2012
//
//    Copyright (c) 2012 Brayden Wilmoth.  All rights reserved.
//    http://www.github.com/brayden/
//    http://www.github.com/jordanperry/
//

#import "UICheckbox.h"

@interface UICheckbox ()

@property (nonatomic, assign) BOOL loaded;
@property (nonatomic, strong) UILabel *textLabel;
@property (nonatomic, strong) UIImage *image;

@end

@implementation UICheckbox

- (void) awakeFromNib
{
    self.backgroundColor = [UIColor clearColor];
    
    _textLabel = [[UILabel alloc] init];
    [self addSubview:_textLabel];
}

- (void) drawRect:(CGRect)rect
{
    if (_imageNameChecked && _imageNameNoChecked)
    {
        _image = [UIImage imageNamed:_checked ? _imageNameChecked : _imageNameNoChecked];
    }
    
    if(!_image || !_imageNameChecked || !_imageNameNoChecked)
    {
        _image = [UIImage imageNamed:[NSString stringWithFormat:@"uicheckbox_%@checked.png", _checked ? @"" : @"un"]];
    }

    UIGraphicsBeginImageContextWithOptions(self.frame.size, NO, 0.0);
    [_image drawInRect:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
    _image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    [_image drawAsPatternInRect:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
    
    if(_disabled)
    {
        self.userInteractionEnabled = FALSE;
        self.alpha = 0.7f;
    }
    else
    {
        self.userInteractionEnabled = TRUE;
        self.alpha = 1.0f;
    }
    
    if(_text && _text.length)
    {
        if(!_loaded)
        {
            [_textLabel setFrame:CGRectMake(self.frame.size.width + 5, 0, 1024, self.frame.size.height)];
            [_textLabel setBackgroundColor:[UIColor clearColor]];

            _loaded = TRUE;
        }
        
        _textLabel.text = _text;
    }
}

- (BOOL) beginTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event
{
    [self setChecked:!_checked];
    return TRUE;
}

- (void) setChecked:(BOOL)boolValue
{
    _checked = boolValue;
    [self setNeedsDisplay];
    
    if([_delegate respondsToSelector:@selector(changeStateCheckBox:withState:)])
        [_delegate changeStateCheckBox:self withState:_checked];
}

- (void) setDisabled:(BOOL)boolValue
{
    _disabled = boolValue;
    [self setNeedsDisplay];
}

- (void) setText:(NSString *)stringValue
{
    _text = stringValue;
    [self setNeedsDisplay];
}

@end
