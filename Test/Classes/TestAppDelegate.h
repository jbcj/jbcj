//
//  TestAppDelegate.h
//  Test
//
//  Created by pivotal on 12/8/09.
//  Copyright Pivotal Labs 2009. All rights reserved.
//

@interface TestAppDelegate : NSObject <UIApplicationDelegate> {
    
    UIWindow *window;
    UINavigationController *navigationController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

@end

