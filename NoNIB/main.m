//
//  main.m
//  NoNIB
//
//  Created by pivotal on 12/10/09.
//  Copyright Pivotal Labs 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

int main(int argc, char *argv[]) {
    
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    int retVal = UIApplicationMain(argc, argv, nil, @"NoNIBAppDelegate");
    [pool release];
    return retVal;
}
