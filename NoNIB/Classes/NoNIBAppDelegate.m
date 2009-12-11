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
	
	UITableView *tableView = [[UITableView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]
														  style:UITableViewStylePlain];
    tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth;
    tableView.delegate = self;
    tableView.dataSource = self;
    [tableView reloadData];
	
	[yellowController.view addSubview:tableView];
	
    [tableView release];
	
	[navigationController pushViewController:yellowController animated:YES];	
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

- (NSInteger)numberOfRowsInSection:(NSInteger *)section {
  return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *MyIdentifier = @"MyIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:MyIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:MyIdentifier] autorelease];
    }
	
	switch(indexPath.row) {
		case 0:
			cell.textLabel.text = @"Orange";
			break;
		case 1:
			cell.textLabel.text = @"Purple";
			break;
		case 2:
			cell.textLabel.text = @"Brown";
			break;
	}
	
	cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}

- (NSIndexPath *)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	if (indexPath.row == 0) {
		UIViewController *orangeController = [[UIViewController alloc] init];
		orangeController.view.backgroundColor = [UIColor orangeColor];
		orangeController.title = @"Orange View";
		[navigationController pushViewController:orangeController animated:YES];
	}
	if (indexPath.row == 1) {
		UIViewController *purpleController = [[UIViewController alloc] init];
		purpleController.view.backgroundColor = [UIColor purpleColor];
		purpleController.title = @"Purple View";
		[navigationController pushViewController:purpleController animated:YES];
	}
	if (indexPath.row == 2) {
		UIViewController *brownController = [[UIViewController alloc] init];
		brownController.view.backgroundColor = [UIColor brownColor];
		brownController.title = @"Brown View";
		[navigationController pushViewController:brownController animated:YES];
	}
}

- (void)dealloc {
	[window release];
    [super dealloc];
}


@end
