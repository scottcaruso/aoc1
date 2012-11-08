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
    //These are the variables used in the functions below.
    int integerOne = 8;
    int integerTwo = 8;
    
    //Create a function called Add. This function will take two NSInteger or int types and return the result of an addition between these two.
    int resultValue = [self Add:integerOne secondValue:integerTwo];
    NSLog(@"%d",resultValue);
    

    //Create a BOOL function called Compare that takes two NSInteger values. Return YES or NO based on whether the values are equal.
    BOOL compareResult = [self Compare:integerOne secondValue:integerTwo];
    if (compareResult == YES)
    {
        NSLog(@"The numbers are the same!");
    }
    else
    {
        NSLog(@"The numbers are not the same.");
    }
    
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

//This is the Compare function that is called in viewDidLoad.
-(BOOL)Compare:(NSInteger)valueOne secondValue:(NSInteger)valueTwo
{
    if (valueOne == valueTwo)
    {
        return YES;
    }
}

@end
