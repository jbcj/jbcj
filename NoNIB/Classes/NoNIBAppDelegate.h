//
//  NoNIBAppDelegate.h
//  NoNIB
//
//  Created by pivotal on 12/10/09.
//  Copyright Pivotal Labs 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NoNIBAppDelegate : NSObject <UIApplicationDelegate, UITableViewDelegate, UITableViewDataSource> {
    UIWindow *window;
	UINavigationController *navigationController;
}

@property (nonatomic, retain) UIWindow *window;
@property (nonatomic, retain) UINavigationController *navigationController;

@end

