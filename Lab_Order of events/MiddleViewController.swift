//
//  MiddleViewController.swift
//  Lab_Order of events
//
//  Created by 曹家瑋 on 2023/9/30.
//

import UIKit


// 根據生命週期事件更新標籤
class MiddleViewController: UIViewController {

    @IBOutlet weak var eventLabel: UILabel!
    
    /// 在每一個生命週期事件的結尾，此屬性上加1—隨著它們添加到標籤中，對事件進行編號。
    var eventNumber = 1
    
    // 當視圖加載完畢時，這個方法會被調用。這是視圖生命週期中的第一個方法。
    override func viewDidLoad() {
        super.viewDidLoad()
        addEvent(from: "viewDidLoad")

    }
    
    // 在視圖即將可見時調用
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        addEvent(from: "viewWillAppear")
    }
    
    // 當視圖完全可見後調用
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        addEvent(from: "viewDidAppear")
    }
    
    // 當視圖即將不可見或被覆蓋時調用
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        addEvent(from: "viewWillDisappear")
    }
    
    // 當視圉已經完全不可見或被覆蓋後調用
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        addEvent(from: "viewDidDisappear")
    }
    
    /// 用於將事件添加到eventLabel中
    func addEvent(from: String) {
        if let existingText = eventLabel.text {
            // 更新eventLabel的文本以包含新的事件
            eventLabel.text = "\(existingText)\n事件編號 \(eventNumber) 是 \(from)"
            // 事件編號增加
            eventNumber += 1
        }
    }

}


