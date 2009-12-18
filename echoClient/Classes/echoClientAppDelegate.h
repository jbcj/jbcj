//
//  echoClientAppDelegate.h
//  echoClient
//
//  Created by pivotal on 12/17/09.
//  Copyright Pivotal Labs 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface echoClientAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	UITextView *text;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) UITextView *text;
@end

