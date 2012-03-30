//
//  SidebarSourceView.m
//  chat
//
//  Created by Nicholas Beeuwsaert on 3/29/12.
//  Copyright (c) 2012 Princeton High School. All rights reserved.
//

#import "SidebarSourceView.h"

@implementation SidebarSourceView

- (NSArray*)childrenForItem:(id)item outlineView:(OutlineView*)outline {
    NSArray *chillun = nil;
    
    if(item == nil){
        chillun = [[outline rootNode] childNodes];
    }else {
        chillun = [item childNodes];
    }
    
    return chillun;
}
- (NSInteger)outlineView:(OutlineView*)outlineView numberOfChildrenOfItem:(id)item{
    if([outlineView rootNode] == nil) return 0; //nothing yet!
    
    return [[self childrenForItem:item outlineView:outlineView] count];
}
- (id)outlineView:(OutlineView*)outlineView objectValueForTableColumn:(NSTableColumn *)tableColumn byItem:(id)item {
    return [item representedObject];
}
- (id)outlineView:(OutlineView*)outlineView child:(NSInteger)child ofItem:(id)item {
    return [[self childrenForItem:item outlineView:outlineView] objectAtIndex:child];
}
- (BOOL)outlineView:(OutlineView*)outlineView isItemExpandable:(id)item {
    return ![item isLeaf];
}
@end
/*
 outlineView:numberOfChildrenOfItem:,
 outlineView:isItemExpandable:,
 outlineView:child:ofItem: 
 outlineView:objectValueForTableColumn:byItem:
*/