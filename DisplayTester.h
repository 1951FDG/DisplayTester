//
//  DisplayTester.h
//  DisplayTester
//
//  Created by administrator on 11-06-11.
//  Copyright 2011 1951FDG. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface DisplayTester : NSObject
{
	NSWindow	*window;
}

- (IBAction)makeKeyAndOrderFrontColorPanel:(id)sender;

- (void)changeColor:(id)sender;

@end /* interface DisplayTester */
