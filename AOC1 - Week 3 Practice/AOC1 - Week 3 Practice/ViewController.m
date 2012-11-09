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
    NSString *stringOne = @"This is not the ";
    NSString *stringTwo = @"string to use.";
    
    //Create a function called Add. This function will take two NSInteger or int types and return the result of an addition between these two.
    int resultValue = [self Add:integerOne secondValue:integerTwo];

    //Create a BOOL function called Compare that takes two NSInteger values. Return YES or NO based on whether the values are equal.
    BOOL compareResult = [self Compare:integerOne secondValue:integerTwo];
    
    //Create a function called Append. This function will take two NSStrings and return a new NSString containing the appended strings using an NSMutableString and the Append method.
    //Call the Append function with two NSStrings. Capture the result and display a UIAlertView with the appended string using displayAlertWithString.
    NSString *stringResult = [self Append:(stringOne) secondString:(stringTwo)];
    
    //This is the part that calls the alertView.
    UIAlertView *stringAlert = [[UIAlertView alloc] initWithTitle:@"Alert View Test" message: stringResult delegate: nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    if (stringAlert != nil)
    {
        [stringAlert show];
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
    else
    {
        return NO;
    }
}

//This is the Append function that is called in viewDidLoad.
-(NSString *)Append:(NSString *)stringOne secondString:(NSString *)stringTwo
{
    NSMutableString *newString = [[NSMutableString alloc] initWithString: stringOne];
    [newString appendString:(stringTwo)];
    return newString;
}

@end
