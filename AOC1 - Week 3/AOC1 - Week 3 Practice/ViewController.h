//
//  ViewController.h
//  AOC1 - Week 3 Practice
//
//  Created by Scott Caruso on 11/5/12.
//  Copyright (c) 2012 Scott Caruso. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    
}
-(int)Add:(NSInteger)valueOne secondValue:(NSInteger)valueTwo;
-(BOOL)Compare:(NSInteger)valueOne secondValue:(NSInteger)valueTwo;
-(NSString *)Append:(NSString *)stringOne secondString:(NSString *)stringTwo;
-(void)displayAlertWithString:(NSString *)stringText;

@end
