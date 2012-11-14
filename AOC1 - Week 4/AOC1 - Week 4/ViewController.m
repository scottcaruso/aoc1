//
//  ViewController.m
//  AOC1 - Week 4
//
//  Created by Scott Caruso on 11/13/12.
//  Copyright (c) 2012 Scott Caruso. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    UIAlertView *testAlert = [[UIAlertView alloc] initWithTitle:@"Error!" message:@"Please login" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    
    if (testAlert != nil)
    {
        testAlert.alertViewStyle = UIAlertViewStylePlainTextInput;
        [testAlert show];
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)alertView:(UIAlertView *)testAlert clickedButtonAtIndex: (NSInteger) buttonIndex
{
    UITextField *textField = [testAlert textFieldAtIndex:0];
    if (textField != nil)
    {
        NSLog(@"%@", textField.text);
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
