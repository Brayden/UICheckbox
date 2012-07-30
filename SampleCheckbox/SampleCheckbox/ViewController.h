//
//    ViewController.h
//
//    Author:    Brayden Wilmoth
//    Co-Author: Jordan Perry
//    Edited:    07/17/2012
//
//    Copyright (c) 2012 Brayden Wilmoth.  All rights reserved.
//    http://www.github.com/brayden/
//    http://www.github.com/jordanperry/
//

@class UICheckbox;

@interface ViewController : UIViewController

-(IBAction)testCheckbox:(id)sender;
-(IBAction)testChecking;
-(IBAction)testDisabling;

@property(nonatomic, weak)IBOutlet UICheckbox *checkbox;

@end
