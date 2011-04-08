//
//  CustomWindow.m
//  ConfigCreator
//
//  Created by administrator on 15-01-11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CustomWindow.h"


@implementation CustomWindow

- (id)initWithContentRect:(NSRect)contentRect styleMask:
(NSUInteger)windowStyle backing:(NSBackingStoreType)bufferingType
					defer:(BOOL)deferCreation
{
	self = [super initWithContentRect:contentRect styleMask:NSBorderlessWindowMask
							  backing:bufferingType defer:deferCreation];
	
	return self;
}

@end
