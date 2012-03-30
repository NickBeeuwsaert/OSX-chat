//
//  SidebarSourceView.h
//  chat
//
//  Created by Nicholas Beeuwsaert on 3/29/12.
//  Copyright (c) 2012 Princeton High School. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OutlineView.h"
@interface SidebarSourceView : NSObject

- (NSArray*)childrenForItem:(id)item outlineView:(OutlineView*)outlineView;
- (NSInteger)outlineView:(OutlineView*)outlineView numberOfChildrenOfItem:(id)item;
- (id)outlineView:(OutlineView*)outlineView objectValueForTableColumn:(NSTableColumn *)tableColumn byItem:(id)item;
- (id)outlineView:(OutlineView*)outlineView child:(NSInteger)childIndex ofItem:(id)item;
- (BOOL)outlineView:(OutlineView*)outlineView isItemExpandable:(id)item;
@end
