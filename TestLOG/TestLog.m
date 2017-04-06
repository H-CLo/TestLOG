//
//  TestLog.m
//  TestLOG
//
//  Created by Hung Chang Lo on 06/04/2017.
//  Copyright © 2017 Go-Trust. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TestLog.h"
#import "LogHelper.h"

@implementation TestLog

+(void) testLogHelper
{
    LOGI(@"In OBJECTIVE-C: Hello INFO");
    LOGD(@"In OBJECTIVE-C: Hello DEBUG");
    LOGE(@"In OBJECTIVE-C: Hello ERROR");
    LOGW(@"In OBJECTIVE-C: Hello WARN");
    LOGV(@"In OBJECTIVE-C: Hello VERBOSE");
}

@end
