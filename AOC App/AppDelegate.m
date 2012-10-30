//
//  AppDelegate.m
//  AOC App
//
//  Scott Caruso
//  AOC1 1211
//  Week 1 Assignment

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];

    //The code below is for a mock election in a given state. It determines if your candidate won or some other candidate.
    float candidatePercentageOfVote = 45.221f; //enter "your" value here
    float thirdPartyVotes = 2.888f; //enter what percentage of the vote third parties get
    float combinedTotal = candidatePercentageOfVote + thirdPartyVotes;
    float otherCandidatePercentageOfVote = (100.00f - combinedTotal);

    NSLog(@"The results from this state are in!");
    
    //#4 - if, else if, and else check to determine who won the state and what to output
    if ((candidatePercentageOfVote > thirdPartyVotes) && (candidatePercentageOfVote > otherCandidatePercentageOfVote)){
        //#2 - Below, take floats and convert to ints to get an estimate for margin of victory.
        int percentageDifferenceOtherMajor = (int)candidatePercentageOfVote - (int)otherCandidatePercentageOfVote;
        int percentageDifferenceThirdParty = (int)candidatePercentageOfVote - (int)thirdPartyVotes;
        NSLog(@"Congratulations, your candidate won this state, beating the other major candidate by approximately %d percentage points and the third party candidate by %d percentage points.",percentageDifferenceOtherMajor,percentageDifferenceThirdParty);
    } else if ((candidatePercentageOfVote < thirdPartyVotes) || ( candidatePercentageOfVote < otherCandidatePercentageOfVote)){
        if (thirdPartyVotes > otherCandidatePercentageOfVote){
            NSLog(@"A third party candidate has miraculously won this state with %f percent of the vote!",thirdPartyVotes);
        } else {
            NSLog(@"The other major candidate has won this state with %.2f percent of the vote.",otherCandidatePercentageOfVote);
        }
    } else {
        NSLog(@"There has been a tie, so a recount will be necessary!");
    }

    //#3 - AND/OR comparions with Float, Int, Bool
    int anticipatedMargin = 10;
    float marginOfVictory = 3.4f; //Set margin of victory. Negative number means we lost.
    BOOL didWeWin = NO;    
    NSLog(@"Time to move on to the next state...");
    if ((marginOfVictory < anticipatedMargin) || (didWeWin == NO)){
        NSLog(@"We had a disappointing night in this state. We expected to win by %d points, but we didn't.",anticipatedMargin);
    } else if ((marginOfVictory > anticipatedMargin) && (anticipatedMargin >= 10)){
        NSLog(@"We exceeded all expectations for tonight! We won by more than we thought we would!");
    } else {
        NSLog(@"We won this state like we expected, and by the margin we expected.");
    }

    //The below code is simply a transition on to the next state
    NSLog(@"The next state has started to count its votes...");

    //#5 - The below uses a basic for loop to determine when this new state is done counting its votes.
    int totalVotesCast = 900000; //the total number of votes cast in this new state
    int votesCountedPerHour = 150000; //the number of votes that get tallied per hour in this state
    int hoursPassed = 0; //do not change this
    for (int x = 0; x<=totalVotesCast; x+=votesCountedPerHour){
        int votesLeftToCount = totalVotesCast - (votesCountedPerHour*hoursPassed);
        if (votesLeftToCount > 0){
             NSLog(@"%d hours have passed, and the votes are not done being counted yet. There are still %d votes left to count.",hoursPassed,votesLeftToCount);
            hoursPassed++;
        } else {
            NSLog(@"It took %d hours, but the votes are finally all tallied!",hoursPassed);
        }
    }
    
    NSLog(@"While we wait for more results, let's call in a campaign surrogate for an interview!");

    //#6 -- The below determines when a campaign surrogate is done with an interview with one network and moves on to the next.
    int numberOfInterviews = 4;
    int lengthOfAnInterviewInMinutes = 6;
    for (int x=1; x<=numberOfInterviews; x++){
        NSLog(@"The campaign surrogate is now ready to start interview number %d",x);
            for (int y=lengthOfAnInterviewInMinutes; y>=0; y--){
                if (y>0){
                    NSLog(@"There are still %d minutes left in the interview.",y);
                } else {
                    NSLog(@"This interview is over!");
                }
            }
    }
    NSLog(@"The interviews are now over! Hopefully we can call the race soon!");

    //#7 -- While loop. How many states left before the election is over?
    int statesThatHaveCalled = 42;
    while (statesThatHaveCalled < 50){
        int statesLeft = 50 - statesThatHaveCalled;
        NSLog(@"The election is not over yet. There are still %d states left that we haven't been able to call.",statesLeft);
        statesThatHaveCalled++;
    }
    NSLog(@"The election is over! All of the states have been called for one of the candidates.");

    //Practice for this week
    NSString *string = [[NSString alloc] initWithString:@"Hello!"];
    int lengthOfString = [string length];

    int arrayPractice[6] =
    {
        3, 8, 11, 224, 545, 3333
    };
    
    int multiArray [3][3] =
    {
        {0,1,2},
        {4,4,4},
        {233,1222,1}
    };
    
    for (int y = 0; y<3; y++){
        for (int x = 0; x<3; x++){
            NSLog(@"%d,%d = %d",x,y,multiArray[x][y]);
        }
    }
    
    NSMutableArray *mutableArray = [[NSMutableArray alloc] initWithCapacity:10];
    [mutableArray addObject:@"hellotest1"];
    [mutableArray addObject:@"test2"];
    
    NSLog(@"%@",[mutableArray description]);
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
