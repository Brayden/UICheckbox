//
//    ViewController.m
//
//    Author:    Brayden Wilmoth
//    Co-Author: Jordan Perry
//    Edited:    07/17/2012
//
//    Copyright (c) 2012 Brayden Wilmoth.  All rights reserved.
//    http://www.github.com/brayden/
//    http://www.github.com/jordanperry/
//

#import "ViewController.h"
#import "UICheckbox.h"


@implementation ViewController
@synthesize checkbox = _checkbox;

-(void)viewDidLoad
{
    [super viewDidLoad];
    
    self.checkbox.checked = TRUE;
    self.checkbox.disabled = FALSE;
    self.checkbox.text = @"Testttt";
}

-(IBAction)testCheckbox:(id)sender {
    NSLog(@"checkbox.checked = %@", (self.checkbox.checked) ? @"YES" : @"NO");
    NSLog(@"checkbox.disabled = %@", (self.checkbox.disabled) ? @"YES" : @"NO");
}

-(IBAction)testChecking {
    self.checkbox.checked = !self.checkbox.checked;
}

-(IBAction)testDisabling {
    self.checkbox.disabled = !self.checkbox.disabled;
}

@end
