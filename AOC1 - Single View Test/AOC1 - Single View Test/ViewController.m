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
    //Title
    title = [[UILabel alloc] initWithFrame: CGRectMake(184.0f,10.0f,400.0f,30.0f)];
    if (title != nil)
    {
        title.text = @"Renegade: The Making of a President";
        title.textAlignment = NSTextAlignmentCenter;
        title.textColor = [UIColor redColor];
        title.backgroundColor = [UIColor whiteColor];
    }
    //Author
    authorHead = [[UILabel alloc] initWithFrame: CGRectMake(10.0f,70.0f,100.0f,40.0f)];
    if (authorHead != nil)
    {
        authorHead.text = @"Author:";
        authorHead.textAlignment = NSTextAlignmentRight;
        authorHead.textColor = [UIColor orangeColor];
        authorHead.backgroundColor = [UIColor brownColor];
    }
    authorText = [[UILabel alloc] initWithFrame: CGRectMake(605.0f,70.0f,150.0f,40.0f)];
    if (authorText != nil)
    {
        authorText.text = @"Richard Wolffe";
        authorText.textAlignment = NSTextAlignmentLeft;
        authorText.textColor = [UIColor blueColor];
        authorText.backgroundColor = [UIColor yellowColor];
    }
    //Published
    publisherHead = [[UILabel alloc] initWithFrame: CGRectMake(10.0f,140.0f,100.0f,40.0f)];
    if (publisherHead != nil)
    {
        publisherHead.text = @"Published:";
        publisherHead.textAlignment = NSTextAlignmentRight;
        publisherHead.textColor = [UIColor magentaColor];
        publisherHead.backgroundColor = [UIColor greenColor];
    }
    publisherText = [[UILabel alloc] initWithFrame: CGRectMake(605.0f,140.0f,150.0f,40.0f)];
    if (publisherText != nil)
    {
        publisherText.text = @"June 2, 2009";
        publisherText.textAlignment = NSTextAlignmentLeft;
        publisherText.textColor = [UIColor purpleColor];
        publisherText.backgroundColor = [UIColor lightGrayColor];
    }
    //Summary
    summaryHead = [[UILabel alloc] initWithFrame: CGRectMake(10.0f,200.0f,100.0f,40.0f)];
    if (summaryHead != nil)
    {
        summaryHead.text = @"Summary:";
        summaryHead.textAlignment = NSTextAlignmentLeft;
        summaryHead.textColor = [UIColor greenColor];
        summaryHead.backgroundColor = [UIColor purpleColor];
    }
    summaryText = [[UILabel alloc] initWithFrame: CGRectMake(134.0f,245.0f,500.0f,200.0f)];
    if (summaryText != nil)
    {
        summaryText.text = @"\"Renegade\" tells the story of Barack Obama's 2008 Presidential campaign. It begins with his decision to run for President, and goes into great detail about the decision-making process that the soon-to-be President went through at major milestones in the process. It takes an objective look at both the successes that then-Senator Obama had as well as the hardships that campaigning led to. The name \"Renegade\" comes from the codename he was given by Secret Service on the campaign trail.";
        summaryText.textAlignment = NSTextAlignmentCenter;
        summaryText.textColor = [UIColor lightGrayColor];
        summaryText.backgroundColor = [UIColor redColor];
        summaryText.numberOfLines = 11;
    }
    
    //the below add the labels to the view
    [self.view addSubview:title];
    [self.view addSubview:authorHead];
    [self.view addSubview:authorText];
    [self.view addSubview:publisherHead];
    [self.view addSubview:publisherText];
    [self.view addSubview:summaryHead];
    [self.view addSubview:summaryText];
    
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
