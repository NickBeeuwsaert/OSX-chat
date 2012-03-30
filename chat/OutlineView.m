//
//  OutlineView.m
//  chat
//
//  Created by Nicholas Beeuwsaert on 3/30/12.
//  Copyright (c) 2012 Princeton High School. All rights reserved.
//

#import "OutlineView.h"

@implementation OutlineView
@synthesize rootNode;
@synthesize userNode;
@synthesize roomNode;

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    NSLog(@"ASF");
    if (self) {
        // Initialization code here.

    }
    
    return self;
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
    [self reloadItem:rootNode reloadChildren:YES];
}
- (void)awakeFromNib {
    [self initData];
}
- (void)drawRect:(NSRect)dirtyRect
{
    
    // Drawing code here.
    [super drawRect:dirtyRect];
}

@end
