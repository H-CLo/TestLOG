//
//  LogHelper.h
//  TestLOG
//
//  Created by Hung Chang Lo on 06/02/2017.
//  Copyright © 2017 Go-Trust. All rights reserved.
//

#ifndef LogHelper_h
#define LogHelper_h
#import <UIKit/UIKit.h>

#define ENABLE_LOG 1

#if ENABLE_LOG

#import <Foundation/Foundation.h>
enum LogLevel
{
    LOG_LEVEL_ERROR = 0,
    LOG_LEVEL_WARNING,
    LOG_LEVEL_INFO,
    LOG_LEVEL_DEBUG,
    LOG_LEVEL_VERBOSE,
};

#define LOGV(format,...) { printLog(LOG_LEVEL_VERBOSE, __PRETTY_FUNCTION__,__LINE__,format, ##__VA_ARGS__);}
#define LOGD(format,...) { printLog(LOG_LEVEL_DEBUG, __PRETTY_FUNCTION__,__LINE__,format, ##__VA_ARGS__);}
#define LOGI(format,...) { printLog(LOG_LEVEL_INFO, __PRETTY_FUNCTION__,__LINE__,format, ##__VA_ARGS__);}
#define LOGW(format,...) { printLog(LOG_LEVEL_WARNING, __PRETTY_FUNCTION__,__LINE__,format, ##__VA_ARGS__);}
#define LOGE(format,...) { printLog(LOG_LEVEL_ERROR, __PRETTY_FUNCTION__,__LINE__,format, ##__VA_ARGS__);}

#ifdef __cplusplus
extern "C" {
#endif
    void printLog(enum LogLevel level, const char* functionName, int line, NSString *logContent, ...);
    NSString *convertLogLevelToStr(enum LogLevel level);
#ifdef __cplusplus
}
#endif

#else
#define LOGV(...)
#define LOGD(...)
#define LOGI(...)
#define LOGW(...)
#define LOGE(...)
#endif


#endif /* LogHelper_h */
