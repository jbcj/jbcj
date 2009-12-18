//
//  echoClientAppDelegate.m
//  echoClient
//
//  Created by pivotal on 12/17/09.
//  Copyright Pivotal Labs 2009. All rights reserved.
//

#import "echoClientAppDelegate.h"

@implementation echoClientAppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(UIApplication *)application {    
	window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	window.backgroundColor = [UIColor redColor];
	
	UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	button.frame = CGRectMake(100, 200, 100, 50);
	//	button.backgroundColor = [UIColor yellowColor];
	[button setTitle:@"Push Me!" forState:UIControlStateNormal];
	[button addTarget:self action:@selector(buttonPressed) forControlEvents:UIControlEventTouchUpInside];
	
	[window addSubview:button];
	
	[window makeKeyAndVisible];
}

- (void)buttonPressed {
}

- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
