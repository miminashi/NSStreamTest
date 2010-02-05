//
//  NSStreamTestAppDelegate.m
//  NSStreamTest
//
//  Created by みみなし on 10/02/02.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "NSStreamTestAppDelegate.h"

@implementation NSStreamTestAppDelegate

@synthesize window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
	// Insert code here to initialize your application
	NSLog(@"Did finish lunching");
	
	sendTextObject = [[SendText alloc] init];
}

- (IBAction)socketOpenButtonClicked:(id)sender
{
	[sendTextObject socketOpen:[distinationIpAddress stringValue] port:[[distinationPort stringValue] integerValue]];
}

- (IBAction)socketCloseButtonClicked:(id)sender
{
	[sendTextObject socketClose];
}

- (IBAction)sendButtonClicked:(id)sender
{
	[sendTextObject sendText:[textToSend stringValue]];
}

@end
