//
//  OutlineView.h
//  chat
//
//  Created by Nicholas Beeuwsaert on 3/30/12.
//  Copyright (c) 2012 Princeton High School. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface OutlineView : NSOutlineView
@property (strong) NSTreeNode *rootNode;
@property (strong) NSTreeNode *userNode;
@property (strong) NSTreeNode *roomNode;

- (void) initData;
- (void) awakeFromNib;
- (id) initWithFrame: (NSRect*)frameRect;
- (void) drawRect:(NSRect)dirtyRect;
@end
