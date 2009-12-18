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

    // Override point for customization after application launch
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
