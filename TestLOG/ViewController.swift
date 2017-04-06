//
//  ViewController.swift
//  TestLOG
//
//  Created by Hung Chang Lo on 06/02/2017.
//  Copyright © 2017 Go-Trust. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        /* Test LogHelper in the swift */
        Logger.LOGI(msg: "In SWITF: Hello INFO")
        Logger.LOGD(msg: "In SWITF: Hello DEBUG")
        Logger.LOGW(msg: "In SWITF: Hello WARN")
        Logger.LOGE(msg: "In SWITF: Hello ERROR")
        Logger.LOGF(msg: "In SWITF: Hello FATAL")
        
        /* Test LogHelper in the objective C */
        TestLog.testLogHelper()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

