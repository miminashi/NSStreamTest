//
//  SendText.m
//  NSStreamTest
//
//  Created by みみなし on 10/02/04.
//  Copyright 2010 Apple Inc. All rights reserved.
//

#import "SendText.h"


@implementation SendText

- (void)socketOpen:(NSString *)ipAddress port:(NSInteger)portNo
{
	if (isOpen == NO) {
		NSHost *host = [NSHost hostWithAddress:ipAddress];
		
		[NSStream getStreamsToHost:host port:portNo inputStream:&inputStream outputStream:&outputStream];		
		
		[inputStream retain];
		[outputStream retain];
		[inputStream open];
		[outputStream open];
		
		isOpen = YES;
	}
}

- (void)socketClose
{
	if (isOpen == YES) {
		[inputStream close];
		[outputStream close];
		[inputStream release];
		[outputStream release];
		isOpen = NO;		
	}
}

- (void)sendText:(NSString *)text
{
	if (isOpen == YES) {
		NSString *eol = [NSString stringWithFormat:@"\r\n"];
		NSString *str = [text stringByAppendingString:eol];
		const uint8_t *rawstring = (const uint8_t *)[str UTF8String];
		[outputStream write:rawstring maxLength:strlen((char *)rawstring)];
	}	
}

@end
