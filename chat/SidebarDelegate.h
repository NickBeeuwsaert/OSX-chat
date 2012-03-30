//
//  SidebarDelegate.h
//  chat
//
//  Created by Nicholas Beeuwsaert on 3/29/12.
//  Copyright (c) 2012 Princeton High School. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SidebarDelegate : NSObject
- (BOOL)outlineView:(NSOutlineView *)outlineView shouldEditTableColumn:(NSTableColumn *)tableColumn item:(id)item;
- (BOOL)outlineView:(NSOutlineView*)outlineView shouldSelectItem:(id)item;
- (BOOL)outlineView:(NSOutlineView*)outlineView isGroupItem:(id)item;
@end
