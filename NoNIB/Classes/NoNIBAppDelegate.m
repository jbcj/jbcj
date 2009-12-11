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
@synthesize navigationController;

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
	
	UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	button.frame = CGRectMake(100, 200, 100, 50);
//	button.backgroundColor = [UIColor yellowColor];
	[button setTitle:@"Push Me!" forState:UIControlStateNormal];
	[button addTarget:self action:@selector(buttonPressed) forControlEvents:UIControlEventTouchUpInside];

	[blueController.view addSubview:button];
	
	navigationController = [[UINavigationController alloc] initWithRootViewController:blueController];
	navigationController.title = @"Blue & Yellow";

	[localControllersArray addObject:greenController];
	[localControllersArray addObject:navigationController];
	
	tabBarController.viewControllers = localControllersArray;
	[localControllersArray release];
	
	[window addSubview:tabBarController.view];
		
    // Override point for customization after application launch
    [window makeKeyAndVisible];
}

-(void)buttonPressed {
	UIViewController *yellowController = [[UIViewController alloc] init];
	yellowController.view.backgroundColor = [UIColor yellowColor];
	yellowController.title = @"Yellow View";
	[navigationController pushViewController:yellowController animated:YES];	
}



- (void)dealloc {
	[window release];
    [super dealloc];
}


@end
