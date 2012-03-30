//
//  SidebarSourceView.h
//  chat
//
//  Created by Nicholas Beeuwsaert on 3/29/12.
//  Copyright (c) 2012 Princeton High School. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface SidebarSourceView : NSObject

@property (strong) NSTreeNode *rootNode;
@property (strong) NSTreeNode *userNode;
@property (strong) NSTreeNode *roomNode;

- (void)initData;
- (NSArray*)childrenForItem:(id)item outlineView:(NSOutlineView*)outlineView;
- (NSInteger)outlineView:(NSOutlineView*)outlineView numberOfChildrenOfItem:(id)item;
- (id)outlineView:(NSOutlineView*)outlineView objectValueForTableColumn:(NSTableColumn *)tableColumn byItem:(id)item;
- (id)outlineView:(NSOutlineView*)outlineView child:(NSInteger)childIndex ofItem:(id)item;
- (BOOL)outlineView:(NSOutlineView*)outlineView isItemExpandable:(id)item;
@end
