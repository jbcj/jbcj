//
//  TestAppDelegate.m
//  Test
//
//  Created by pivotal on 12/8/09.
//  Copyright Pivotal Labs 2009. All rights reserved.
//

#import "TestAppDelegate.h"
#import "RootViewController.h"


@implementation TestAppDelegate

@synthesize window;
@synthesize navigationController;


#pragma mark -
#pragma mark Application lifecycle

- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
	
	[window addSubview:[navigationController view]];
    [window makeKeyAndVisible];
}


- (void)applicationWillTerminate:(UIApplication *)application {
	// Save data if appropriate
}


#pragma mark -
#pragma mark Memory management

- (void)dealloc {
	[navigationController release];
	[window release];
	[super dealloc];
}


@end

