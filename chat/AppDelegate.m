//
//  AppDelegate.m
//  chat
//
//  Created by Nicholas Beeuwsaert on 3/24/12.
//  Copyright (c) 2012 Princeton High School. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window;
@synthesize sidebar = sidebar;
@synthesize sidebarSource = sidebarSource;
@synthesize sidebarDelegate = sidebarDelegate;


- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)theApplication {
return YES;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    [sidebarSource initData];
    //NSTreeNode *me = [[NSTreeNode alloc] initWithRepresentedObject:@"razerwolf"];
    //[[sidebarSource.userNode mutableChildNodes] addObject:me];
    [sidebar reloadData];
}

@end
