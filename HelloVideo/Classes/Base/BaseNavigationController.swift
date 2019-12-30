//
//  BaseNavigationController.swift
//  HelloVideo
//
//  Created by young He on 2019/12/17.
//  Copyright © 2019 128yh. All rights reserved.
//

import UIKit

class BaseNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.addPanGes()
    }
    
    //将导航栏的右滑手势添加到 view 上面, 实现全屏都可右滑返回
    func addPanGes() {
//        interactivePopGestureRecognizer?.delegate = self
        guard  let targets = interactivePopGestureRecognizer?.value(forKey: "_targets") as?[AnyObject] else {
            return
        }
        let dict = targets[0]
        //拿到action
        let target = dict.value(forKey: "target") as Any
        //通过字典无法拿到action，这里通过Selector方法包装action
        let action = Selector(("handleNavigationTransition:"))
        //拿到target action 创建pan手势并添加到全屏view上
        let gesture = UIPanGestureRecognizer(target: target, action: action)
        view.addGestureRecognizer(gesture)
        // 这里需要将导航栏的右滑手势去掉
        self.interactivePopGestureRecognizer?.isEnabled = false
    }

}
