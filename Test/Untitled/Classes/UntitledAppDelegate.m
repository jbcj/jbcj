//
//  UntitledAppDelegate.m
//  Untitled
//
//  Created by pivotal on 12/8/09.
//  Copyright Pivotal Labs 2009. All rights reserved.
//

#import "UntitledAppDelegate.h"
#import "UntitledViewController.h"

@implementation UntitledAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
