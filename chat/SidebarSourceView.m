//
//  SidebarSourceView.m
//  chat
//
//  Created by Nicholas Beeuwsaert on 3/29/12.
//  Copyright (c) 2012 Princeton High School. All rights reserved.
//

#import "SidebarSourceView.h"

@implementation SidebarSourceView

@synthesize rootNode;
@synthesize userNode;
@synthesize roomNode;

- (NSArray*)childrenForItem:(id)item outlineView:(NSOutlineView*)outlineViews {
    NSArray *chillun = nil;
    
    if(item == nil){
        chillun = [rootNode childNodes];
    }else {
        chillun = [item childNodes];
    }
    
    return chillun;
}

- (void) initData {
    rootNode = [[NSTreeNode alloc] initWithRepresentedObject:nil ];
    // Create the user tree node
    userNode = [[NSTreeNode alloc] initWithRepresentedObject: @"USERS"];
    {
        for(int x = 0; x< 10; x++){
            NSTreeNode *node = [[NSTreeNode alloc] initWithRepresentedObject: [NSString stringWithFormat:@"user %d", x]];
            [userNode.mutableChildNodes addObject: node];
        }
    }
    
    //create the Rooms tree node
    roomNode = [[NSTreeNode alloc] initWithRepresentedObject:@"ROOMS"];
    {
        for(int x = 0; x< 10; x++){
            NSTreeNode *node = [[NSTreeNode alloc] initWithRepresentedObject: [NSString stringWithFormat:@"#room %d", x]];
            [roomNode.mutableChildNodes addObject: node];
        }
    }
    [[rootNode mutableChildNodes]addObject:roomNode];
    [[rootNode mutableChildNodes]addObject:userNode];
    
    //[outlineView reloadItem:rootNode reloadChildren:YES];
}
- (NSInteger)outlineView:(NSOutlineView*)outlineView numberOfChildrenOfItem:(id)item{
    if(rootNode == nil) return 0; //nothing yet!
    
    return [[self childrenForItem:item outlineView:outlineView] count];
}
- (id)outlineView:(NSOutlineView*)outlineView objectValueForTableColumn:(NSTableColumn *)tableColumn byItem:(id)item {
    return [item representedObject];
}
- (id)outlineView:(NSOutlineView*)outlineView child:(NSInteger)child ofItem:(id)item {
    return [[self childrenForItem:item outlineView:outlineView] objectAtIndex:child];
}
- (BOOL)outlineView:(NSOutlineView*)outlineView isItemExpandable:(id)item {
    return ![item isLeaf];
}
@end
/*
 outlineView:numberOfChildrenOfItem:,
 outlineView:isItemExpandable:,
 outlineView:child:ofItem: 
 outlineView:objectValueForTableColumn:byItem:
*/