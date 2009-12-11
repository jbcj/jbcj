//
//  NoNIBAppDelegate.m
//  NoNIB
//
//  Created by pivotal on 12/10/09.
//  Copyright Pivotal Labs 2009. All rights reserved.
//

#import "NoNIBAppDelegate.h"

@implementation NoNIBAppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(UIApplication *)application {    
	window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	window.backgroundColor = [UIColor redColor];

	
	UITabBarController *tabBarController = [[UITabBarController alloc] init];
	
	NSMutableArray *localControllersArray = [[NSMutableArray alloc] initWithCapacity:2];
	
	UIViewController *greenController = [[UIViewController alloc] init];
	greenController.view.backgroundColor = [UIColor greenColor];
	greenController.title = @"Green View";
	
	UIViewController *blueController = [[UIViewController alloc] init];
	blueController.view.backgroundColor = [UIColor blueColor];
	blueController.title = @"Blue View";

	[localControllersArray addObject:greenController];
	[localControllersArray addObject:blueController];
	
	tabBarController.viewControllers = localControllersArray;
	[localControllersArray release];
	
	[window addSubview:tabBarController.view];
	
		
    // Override point for customization after application launch
    [window makeKeyAndVisible];
}


- (void)dealloc {
	[window release];
    [super dealloc];
}


@end
