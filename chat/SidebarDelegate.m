//
//  SidebarDelegate.m
//  chat
//
//  Created by Nicholas Beeuwsaert on 3/29/12.
//  Copyright (c) 2012 Princeton High School. All rights reserved.
//

#import "SidebarDelegate.h"

@implementation SidebarDelegate
- (BOOL)outlineView:(NSOutlineView *)outlineView shouldEditTableColumn:(NSTableColumn *)tableColumn item:(id)item {
    return NO;
}
- (BOOL)outlineView:(NSOutlineView*)outlineView shouldSelectItem:(id)item {
    return [item isLeaf];
}
- (BOOL)outlineView:(NSOutlineView*)outlineView isGroupItem:(id)item {
    //asdf
    //if([item blah]){
    //    return YES;
    //}
    return ![item isLeaf];
}
@end
