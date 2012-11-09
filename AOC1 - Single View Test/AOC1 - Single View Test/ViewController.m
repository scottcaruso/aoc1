//
//  ViewController.m
//  AOC1 - Single View Test
//
//  Created by Scott Caruso on 10/31/12.
//  Copyright (c) 2012 Scott Caruso. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    NSNumber *sum = [[NSNumber alloc] initWithInt:5];
    
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)printDebugInfo:(NSString*)debugString
{
    NSLog(@"%@", debugString);
}

@end
