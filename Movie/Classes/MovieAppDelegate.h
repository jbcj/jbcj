//
//  MovieAppDelegate.h
//  Movie
//
//  Created by pivotal on 12/8/09.
//  Copyright Pivotal Labs 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MovieViewController;

@interface MovieAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    UITabBarController *tabBarController;
    MyTableViewController *myTableViewController;
    MySecondTableViewController *mySecondTableViewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) UITabBarController *tabBarController;
@property (nonatomic, retain) MyTableViewController *myTableViewController;
@property (nonatomic, retain) MySecondTableViewController *mySecondTableViewController;

@end

