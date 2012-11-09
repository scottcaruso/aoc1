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

//Step 1 - Create a function called Add. This function will take two NSInteger or int types and return the result of an addition between these two.
-(int)Add:(NSInteger)valueOne secondValue:(NSInteger)valueTwo
{
    int resultValue = valueOne + valueTwo;
    return resultValue;
}

//Step 2 - Create a BOOL function called Compare that takes two NSInteger values. Return YES or NO based on whether the values are equal.
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

//Step 3 - Create a function called Append. This function will take two NSStrings and return a new NSString containing the appended strings using an NSMutableString and the Append method.
-(NSString *)Append:(NSString *)stringOne secondString:(NSString *)stringTwo
{
    NSMutableString *newString = [[NSMutableString alloc] initWithString: stringOne];
    [newString appendString:(stringTwo)];
    return newString;
}

//Step 5 - Create a function called displayAlertWithString. This function will take as a parameter an NSString.
-(void)displayAlertWithString:(NSString *)stringText
{
    UIAlertView *stringAlert = [[UIAlertView alloc] initWithTitle:@"String Test" message: stringText delegate: nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    if (stringAlert != nil)
    {
        [stringAlert show];
    }
}

- (void)viewDidLoad
{
    //These are the variables used in the functions below.
    int integerOne = 7;
    int integerTwo = 7;
    NSString *stringOne = @"This is a ";
    NSString *stringTwo = @"string I have split apart.";
    
    //Step 4 - Call the Append function with two NSStrings. Capture the result and display a UIAlertView with the appended string using displayAlertWithString.
    NSString *stringResult = [self Append:(stringOne) secondString:(stringTwo)];
    [self displayAlertWithString:stringResult];
    
    //Step 6 - Call the Add function passing in two integer values. Capture the return of this function into a variable.
    int resultValue = [self Add:integerOne secondValue:integerTwo];
    
    //Step 7 - Bundle the returned integer into an NSNumber and then convert it to a NSString and pass it to the DisplayAlertWithString function.
    NSNumber *addResult = [[NSNumber alloc] initWithInt: resultValue];
    
  
        //Step 8 - Give it some text for the title. The message will read, "The number is 00". Replace the 00 with the integer passed into the function.
    if (addResult != nil)
    {
        NSMutableString *resultString = [[NSMutableString alloc] initWithString: @"The number is "];
        NSString *result = [addResult stringValue];
        [resultString appendString: result];
        [self displayAlertWithString:resultString];
    }
    
    //Step 9 - Call the Compare function with two integer values. If Compare returns YES, display an UIAlertView both with the input values and the result using the DisplayAlertWithString function
    BOOL compareResult = [self Compare:integerOne secondValue:integerTwo];
    if (compareResult == YES)
    {
        NSNumber *comparedNumber = [[NSNumber alloc] initWithInt: integerOne];
        if (comparedNumber != nil)
        {
            NSMutableString *compareString = [[NSMutableString alloc] initWithString:@"Both numbers were "];
            NSString *comparedNumberString = [comparedNumber stringValue];
            [compareString appendString: comparedNumberString];
            [compareString appendString: @"! They are the same!"];
            [self displayAlertWithString:compareString];
        }
    }
    else
    {
        NSString *noMatch = [[NSString alloc] initWithString: @"The two integers don't match."];
        [self displayAlertWithString: noMatch];
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
