//
//  ViewController.m
//  AOC1 - Week 3 Practice
//
//  Created by Scott Caruso on 11/5/12.
//  Copyright (c) 2012 Scott Caruso. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //Create a function called Add. This function will take two NSInteger or int types and return the result of an addition between these two.
    int integerOne = 8;
    int integerTwo = 6;
    int resultValue = [self Add:(integerOne) secondValue:(integerTwo)];
    NSLog(@"%d",resultValue);
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//This is the Add function that is called in viewDidLoad.
-(int)Add:(NSInteger)valueOne secondValue:(NSInteger)valueTwo
{
    int resultValue = valueOne + valueTwo;
    return resultValue;
}

@end
