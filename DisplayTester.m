//
//  DisplayTester.m
//  DisplayTester
//
//  Created by administrator on 11-06-11.
//  Copyright 2011 1951FDG. All rights reserved.
//

#import "DisplayTester.h"


@implementation DisplayTester

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
	window = [[NSWindow alloc] initWithContentRect:[[NSScreen mainScreen] frame] styleMask:NSBorderlessWindowMask backing:NSBackingStoreBuffered defer:NO];
	
	[window setBackgroundColor:[NSColor blackColor]];
	[window setHidesOnDeactivate:YES];
	[window setLevel:NSModalPanelWindowLevel];
	[window setOpaque:NO];
	
	[window orderFront:nil];
	
	NSColorPanel *panel = [NSColorPanel sharedColorPanel];
	
	[panel setColor:[NSColor blackColor]];
	[panel setContinuous:YES];
	[panel setLevel:NSDockWindowLevel];
	[panel setMode:NSCrayonModeColorPanel];
	[panel setShowsAlpha:YES];
	[panel setTarget:self];
	[panel setAction:@selector(changeColor:)];
	
	[panel makeKeyAndOrderFront:nil];
} /* end applicationDidFinishLaunching */

- (IBAction)makeKeyAndOrderFrontColorPanel:(id)sender
{
	[[NSColorPanel sharedColorPanel] makeKeyAndOrderFront:nil];
} /* end makeKeyAndOrderFrontColorPanel */

- (void)changeColor:(id)sender
{
	[window setBackgroundColor:[sender color]];
} /* end changeColor */

@end /* implementation DisplayTester */
