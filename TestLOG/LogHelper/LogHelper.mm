//
//  LogHelper.m
//  TestLOG
//
//  Created by Hung Chang Lo on 06/02/2017.
//  Copyright © 2017 Go-Trust. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "LogHelper.h"

#if ENABLE_LOG

NSString *convertLogLevelToStr(enum LogLevel level) {
    NSString * logStr;
    
    switch (level) {
        case LOG_LEVEL_INFO:
            logStr = @"[INFO]";
            break;
        case LOG_LEVEL_DEBUG:
            logStr = @"[DEBUG]";
            break;
        case LOG_LEVEL_ERROR:
            logStr = @"[ERROR]";
            break;
        case LOG_LEVEL_WARNING:
            logStr = @"[WARNING]";
            break;
        case LOG_LEVEL_VERBOSE:
            logStr = @"[VERBOSE]";
            break;
        default:
            logStr = @"[INFO]";
            break;
    }
    
    return logStr;
}

void printLog(enum LogLevel level, const char * functionName, int line, NSString * logContent, ...)
{
    NSString * logStr = convertLogLevelToStr(level);
    
    va_list args;
    va_start(args, logContent);
    NSString * content = [[NSString alloc] initWithFormat:logContent
                                                arguments:args];
    va_end(args);
    
    NSString * message = [[NSString alloc] initWithFormat: @"%s:%d:%@: %@\n\n", functionName, line, logStr, content];
    NSLog(@"%@", message);
}

#endif
