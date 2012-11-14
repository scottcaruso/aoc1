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
        //[dateFormatter setDateFormat:@"yyyy.MM.dd G 'at' HH:mm:ss zzz"];
        [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
        NSString *newString = [dateFormatter stringFromDate:date];
        NSLog(newString);
    }
    
    textField = [[UITextField alloc] initWithFrame: CGRectMake(10.0f, 10.0f, 200.0f, 30.0f)];
    if (textField != nil)
    {
        textField.borderStyle = UITextBorderStyleRoundedRect;
        [self.view addSubview:textField];
    }
    
    UIButton *button = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    if (button != nil)
    {
        button.frame = CGRectMake(10.0f, 50.0f, 100.0f, 50.0f);
        [button setTitle:@"OK" forState:UIControlStateNormal];
        [button addTarget:self action:@selector(onClick) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button];
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)onClick
{
    NSString *userText = [textField text];
}

@end
