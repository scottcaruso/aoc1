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
    //Login
    //This is the UILabel+Display for "Username"
    username = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 20.0f, 100.0f, 20.0f)];
    if (username != nil)
    {
        username.text = @"Username:";
        [self.view addSubview:username];
    }
    //This is the UITextField+Display for the Username entry.
    enterUsername = [[UITextField alloc] initWithFrame:CGRectMake(110.0f, 20.0f, 200.0f, 20.0f)];
    if (enterUsername != nil)
    {
        enterUsername.borderStyle = UITextBorderStyleRoundedRect;
        [self.view addSubview:enterUsername];
    }
    //This is the UI Login button+Display to go below the Username entry.
    loginButton = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    if (loginButton != nil)
    {
        loginButton.frame = CGRectMake(240.0f, 50.0f, 70.0f, 30.0f);
        loginButton.tintColor = [UIColor blueColor];
        [loginButton setTitle:@"Login" forState:UIControlStateNormal];
        //Adding a target to the button to the onClick function.
        [loginButton addTarget:self action:@selector(onClick) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:loginButton];
    }
    //UILabel to direct the user to enter a username.
    usernameDirections = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 90.0f, 320.0f, 40.0f)];
    if (usernameDirections != nil)
    {
        usernameDirections.text = @"Please enter a username.";
        [usernameDirections setTextAlignment:NSTextAlignmentCenter];
        [usernameDirections setBackgroundColor:[UIColor lightGrayColor]];
        [usernameDirections setTextColor:[UIColor whiteColor]];
        [self.view addSubview:usernameDirections];
    }

    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Onclick function for the button(s)
-(void)onClick
{
    NSLog(@"The function works!");
}

@end
