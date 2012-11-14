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
    NSDate *date = [NSDate date];
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    if (dateFormatter != nil)
    {
        [dateFormatter setDateFormat:@"yyyy.MM.dd G 'at' HH:mm:ss zzz"];
        NSString *newString = [dateFormatter stringFromDate:date];
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
