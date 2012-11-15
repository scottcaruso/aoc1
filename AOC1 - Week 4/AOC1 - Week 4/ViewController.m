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
    username = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 25.0f, 100.0f, 20.0f)];
    if (username != nil)
    {
        username.text = @"Username:";
        [self.view addSubview:username];
    }
    //This is the UITextField+Display for the Username entry.
    enterUsername = [[UITextField alloc] initWithFrame:CGRectMake(110.0f, 20.0f, 200.0f, 30.0f)];
    if (enterUsername != nil)
    {
        enterUsername.borderStyle = UITextBorderStyleRoundedRect;
        [self.view addSubview:enterUsername];
    }
    //This is the UI Login button+Display to go below the Username entry.
    loginButton = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    if (loginButton != nil)
    {
        loginButton.frame = CGRectMake(240.0f, 60.0f, 70.0f, 30.0f);
        loginButton.tintColor = [UIColor blueColor];
        loginButton.tag = 0; //Giving the login button a tag.
        [loginButton setTitle:@"Login" forState:UIControlStateNormal];
        //Adding a target to the button to the onClick function.
        [loginButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:loginButton];
    }
    //UILabel to direct the user to enter a username.
    usernameDirections = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 105.0f, 310.0f, 80.0f)];
    if (usernameDirections != nil)
    {
        usernameDirections.text = @"Please enter a username.";
        usernameDirections.numberOfLines = 2;
        [usernameDirections setTextAlignment:NSTextAlignmentCenter];
        [usernameDirections setBackgroundColor:[UIColor lightGrayColor]];
        [usernameDirections setTextColor:[UIColor whiteColor]];
        [self.view addSubview:usernameDirections];
    }
    //UIButton for Show Date
    dateButton = [UIButton buttonWithType: UIButtonTypeRoundedRect];
    if (dateButton != nil)
    {
        dateButton.frame = CGRectMake(10.0f, 215.0f, 100.0f, 30.0f);
        dateButton.tintColor = [UIColor blueColor];
        dateButton.tag = 1; //Giving the date button a tag.
        [dateButton setTitle:@"Show Date" forState:UIControlStateNormal];
        //Adding a target to the button to the onClick function.
        [dateButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:dateButton];
    }
    //UIButton for Author Info
    authorInfo = [UIButton buttonWithType: UIButtonTypeInfoDark];
    if (authorInfo != nil)
    {
        authorInfo.frame = CGRectMake(10.0f, 265.0f, 15.0f, 15.0f);
        authorInfo.tag = 2; //Giving the author button a tag
        [authorInfo addTarget: self action:@selector(onClick:) forControlEvents: UIControlEventTouchUpInside];
        [self.view addSubview:authorInfo];
    }
    //Creation of the blank UILabel below Author Info Button
    authorDetails = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 285.0f, 310.0f, 80.0f)];
    if (authorDetails != nil)
    {
        authorDetails.text = @"";
        authorDetails.numberOfLines = 2;
        [authorDetails setTextAlignment:NSTextAlignmentCenter];
        [authorDetails setTextColor:[UIColor yellowColor]];
        [self.view addSubview:authorDetails];
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
-(void)onClick:(UIButton*)button
{
    switch (button.tag) {
        case 0: //Case 0 is for the Username field.
        {
            [enterUsername resignFirstResponder];//This dismisses the keyboard when the button is clicked.
            //Checks to verify if username field is blank or not.
            if (enterUsername.text == NULL)
            {
                usernameDirections.text = @"Username cannot be empty.";
            } else
                //Passes the newusername into a String.
            {
                NSString *newDirections = [NSString stringWithFormat:@"User: %@ has been logged in.",enterUsername.text];
                usernameDirections.text = newDirections;
            }
            break;
        }
        case 1: //Case 1 is for the Date/Time field.
        {
            NSDate *currentDateTime = [NSDate date];
            NSDateFormatter *currentDateTimeFormat = [[NSDateFormatter alloc] init];
            if (currentDateTimeFormat != nil)
            {
                //Sets DateTime Format for the alert.
                [currentDateTimeFormat setDateStyle:NSDateFormatterLongStyle];
                [currentDateTimeFormat setTimeStyle:NSDateFormatterFullStyle];
                NSString *dateTimeString = [currentDateTimeFormat stringFromDate:currentDateTime];
                dateTimeAlert = [[UIAlertView alloc] initWithTitle:@"Current Date/Time" message:dateTimeString delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
                if (dateTimeString != nil)
                {
                    [dateTimeAlert show];
                }
            }
            break;
        }
        case 2: //Case 2 is for the Author Info field.
        {
            authorDetails.text = @"This application was created by Scott Caruso.";
            [authorDetails setBackgroundColor:[UIColor purpleColor]];
            break;
        }
        default:
        {
            break;
        }
    }
}

@end
