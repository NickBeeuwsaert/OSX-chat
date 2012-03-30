//
//  AppDelegate.h
//  chat
//
//  Created by Nicholas Beeuwsaert on 3/24/12.
//  Copyright (c) 2012 Princeton High School. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "SidebarDelegate.h"
#import "SidebarSourceView.h"
@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet NSOutlineView *sidebar;
@property (assign) IBOutlet SidebarDelegate* sidebarDelegate;
@property (assign) IBOutlet SidebarSourceView* sidebarSource;

@end
