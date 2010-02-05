//
//  NSStreamTestAppDelegate.h
//  NSStreamTest
//
//  Created by みみなし on 10/02/02.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "SendText.h"

@interface NSStreamTestAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
	SendText *sendTextObject;
	IBOutlet NSTextField *distinationIpAddress;
	IBOutlet NSTextField *distinationPort;
	IBOutlet NSTextField *textToSend;
}

@property (assign) IBOutlet NSWindow *window;

- (IBAction)socketOpenButtonClicked:(id)sender;
- (IBAction)socketCloseButtonClicked:(id)sender;
- (IBAction)sendButtonClicked:(id)sender;

@end
