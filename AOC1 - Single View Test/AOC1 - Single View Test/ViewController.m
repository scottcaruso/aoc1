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
	// Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor cyanColor];
    label1 = [[UILabel alloc] initWithFrame: CGRectMake(10.0f,10.0f,100.0f,20.0f)];
    if (label1 != nil)
    {
        label1.text = @"Label text";
        label1.textAlignment = NSTextAlignmentCenter;
        label1.textColor = [UIColor blueColor];
    }
    label2 = [[UILabel alloc] initWithFrame: CGRectMake(10.0f,50.0f,100.0f,20.0f)];
    if (label2 != nil)
    {
        label2.text = @"Second label";
        label2.textAlignment = NSTextAlignmentCenter;
        label2.textColor = [UIColor redColor];
    }
    label3 = [[UILabel alloc] initWithFrame: CGRectMake(10.0f,100.0f,100.0f,20.0f)];
    if (label3 != nil)
    {
        label3.text = @"Third label";
        label3.textAlignment = NSTextAlignmentCenter;
        label3.textColor = [UIColor yellowColor];
    }
    
    [self.view addSubview:label1];
    [self.view addSubview:label2];
    [self.view addSubview:label3];
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
