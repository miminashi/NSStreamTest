//
//  SendText.h
//  NSStreamTest
//
//  Created by みみなし on 10/02/04.
//  Copyright 2010 Apple Inc. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface SendText : NSObject {
	NSInputStream *inputStream;
	NSOutputStream *outputStream;
	BOOL isOpen;
}

- (void)socketOpen:(NSString *)ipAddress port:(NSInteger)portNo;
- (void)socketClose;
- (void)sendText:(NSString *)text;

@end
