//
//  MovieViewController.m
//  Movie
//
//  Created by pivotal on 12/8/09.
//  Copyright Pivotal Labs 2009. All rights reserved.
//

#import "MovieViewController.h"

@implementation MovieViewController
@synthesize text;


/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
	//allocate the view
	self.view = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
	
	//set the view's background color
	self.view.backgroundColor = [UIColor whiteColor];
	
	// nav controller
	UINavigationController *navigationController = [[UINavigationController alloc] init];
	[self.view addSubview:navigationController];
	
	
	text = [[UITextView alloc] init];
	text.frame = CGRectMake(100, 100, 100, 50);
	text.text = @"Hello!";
	
	[self.view addSubview:text];
	
	UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	
	//set the position of the button
	button.frame = CGRectMake(100, 300, 100, 50);
	
	//set the button's title
	[button setTitle:@"Click Me!" forState:UIControlStateNormal];
	
	[button addTarget:self action:@selector(buttonPressed)
	 forControlEvents:UIControlEventTouchUpInside];
	
	//add the button to the view
	[self.view addSubview:button];
	
	
}

-(void)buttonPressed {
	text.text = @"Button Pressed!";
	
}


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
