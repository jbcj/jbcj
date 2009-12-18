//
//  echoClientAppDelegate.m
//  echoClient
//
//  Created by pivotal on 12/17/09.
//  Copyright Pivotal Labs 2009. All rights reserved.
//

#import "echoClientAppDelegate.h"
#import "ASIHTTPRequest.h"
@implementation echoClientAppDelegate

@synthesize window;
@synthesize text;

- (void)applicationDidFinishLaunching:(UIApplication *)application {    
	window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	window.backgroundColor = [UIColor redColor];
	
	UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	button.frame = CGRectMake(100, 200, 100, 50);
	//	button.backgroundColor = [UIColor yellowColor];
	[button setTitle:@"Push Me!" forState:UIControlStateNormal];
	[button addTarget:self action:@selector(buttonPressed) forControlEvents:UIControlEventTouchUpInside];
	
	text = [[UITextView alloc] initWithFrame:CGRectMake(50, 260, 200, 200)];
	
	[window addSubview:button];
//	[button release];
	[window addSubview:text];
//	[text release];
	
	[window makeKeyAndVisible];
}

- (void)buttonPressed {
	NSURL *url = [NSURL URLWithString:@"http://localhost:9000"];
	ASIHTTPRequest *request = [ASIHTTPRequest requestWithURL:url];
	[request start];
	NSError *error = [request error];
	if (!error) {
		NSString *response = [request responseString];
		NSLog(response);
		CGPoint p = [text contentOffset];
		text.text = [text.text stringByAppendingString:response];		
		[text setContentOffset:p animated:NO];
		[text scrollRangeToVisible:NSMakeRange([text.text length], 0)];
		
	}
}

- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
