//
//  Logger.swift
//  TestLOG
//
//  Created by Hung Chang Lo on 06/02/2017.
//  Copyright © 2017 Go-Trust. All rights reserved.
//

import Foundation

enum logLevel: String {
    case INFO  = "INFO"
    case DEBUG = "DEBUG"
    case WARN  = "WARN"
    case ERROR = "ERROR"
    case FATAL = "FATAL"
}

open class Logger {
    static let ENABLE_LOG = true
    static let ENABLE_PRETTY_LOG = true

    static func LOGI(msg: String, filename: String = #file, line: Int = #line, funcname: String = #function) {
        printLog(msg: msg, loglevel: logLevel.INFO.rawValue, filename: filename, line: line, funcname: funcname)
    }

    static func LOGD(msg: String, filename: String = #file, line: Int = #line, funcname: String = #function) {
        printLog(msg: msg, loglevel: logLevel.DEBUG.rawValue, filename: filename, line: line, funcname: funcname)
    }

    static func LOGW(msg: String, filename: String = #file, line: Int = #line, funcname: String = #function) {
        printLog(msg: msg, loglevel: logLevel.WARN.rawValue, filename: filename, line: line, funcname: funcname)
    }

    static func LOGE(msg: String, filename: String = #file, line: Int = #line, funcname: String = #function) {
        printLog(msg: msg, loglevel: logLevel.ERROR.rawValue, filename: filename, line: line, funcname: funcname)
    }

    static func LOGF(msg: String, filename: String = #file, line: Int = #line, funcname: String = #function) {
        printLog(msg: msg, loglevel: logLevel.FATAL.rawValue, filename: filename, line: line, funcname: funcname)
    }
    
    private static func printLog(msg: String, loglevel: logLevel.RawValue, filename: String, line: Int, funcname: String) {
        if ENABLE_LOG {
            if ENABLE_PRETTY_LOG {
                print("****\(Date()) [\(funcname)] [Line:\(line)] \(loglevel): \(msg)\n")
            } else {
                print("****\(Date()) \(loglevel): \(msg)\n")
            }
        } else {
            print("")
        }
    }
}
