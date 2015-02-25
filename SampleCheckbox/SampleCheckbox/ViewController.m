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

@interface ViewController()

-(IBAction)testCheckbox:(id)sender;
-(IBAction)testChecking;
-(IBAction)testDisabling;

@property(nonatomic, weak)IBOutlet UICheckbox *checkbox;

@end


@implementation ViewController

-(void)viewDidLoad
{
    [super viewDidLoad];
    
    _checkbox.checked = TRUE;
    _checkbox.disabled = FALSE;
    _checkbox.text = @"Testttt";
    
    //_checkbox.imageNameCheched = @"";
    //_checkbox.imageNameNoCheched = @"";
    _checkbox.delegate = self;
}

-(IBAction)testCheckbox:(id)sender
{
    NSLog(@"checkbox.checked = %@", (_checkbox.checked) ? @"YES" : @"NO");
    NSLog(@"checkbox.disabled = %@", (_checkbox.disabled) ? @"YES" : @"NO");
}

-(IBAction)testChecking
{
    _checkbox.checked = !_checkbox.checked;
}

-(IBAction)testDisabling
{
    _checkbox.disabled = !_checkbox.disabled;
}

- (void)changeStateCheckBox:(UICheckbox *)checkBox withState:(BOOL)newState
{
    NSLog(@"Change State in CheckBox");
}

@end
