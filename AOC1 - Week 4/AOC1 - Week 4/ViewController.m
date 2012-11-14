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
    UIAlertView *testAlert = [[UIAlertView alloc] initWithTitle:@"Error!" message:@"Please select a destiny!" delegate:self cancelButtonTitle:@"Go Left" otherButtonTitles:@"Go Right",@"Go Straight", nil];
    
    if (testAlert != nil)
    {
        [testAlert show];
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)alertView:(UIAlertView *)testAlert clickedButtonAtIndex: (NSInteger) buttonIndex
{
    switch (buttonIndex)
    {
        case 0:
        {
            
        }
        break;
        case 1:
        {
            
        }
        break;
        case 2:
        {
    
        }
        break;
        default:
        {
            
        }
        break;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
