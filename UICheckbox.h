//
//    UICheckbox.h
//
//    Author: Brayden Wilmoth
//    Edited: 07/17/2012
//
//    Copyright (c) 2012 Brayden Wilmoth.  All rights reserved.
//    http://www.github.com/brayden/
//

#import <UIKit/UIKit.h>

@interface UICheckbox : UIControl

@property(nonatomic, assign)BOOL isChecked;

@property(nonatomic, weak)UIImage *uncheckedImage;
@property(nonatomic, weak)UIImage *checkedImage;

@end
