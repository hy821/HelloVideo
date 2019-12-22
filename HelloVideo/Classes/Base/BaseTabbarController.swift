//
//  BaseTabbarController.swift
//  HelloVideo
//
//  Created by young He on 2019/12/17.
//  Copyright © 2019 128yh. All rights reserved.
//

import UIKit
import UIColor_Hex_Swift

class BaseTabbarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupViewController()
    }
    
    func setupViewController() {
        let classArr = ["HomeViewController","VideoLibViewController","DiscoverViewController","MineViewController"]
        let titleArr = ["首页","片库","发现","我的"]
        let normalImgArr = ["tab_HomeUn","tab_VideoLibraryUn","tab_DiscoverUn","tab_MineUn"]
        let selectImgArr = ["tab_Home","tab_VideoLibrary","tab_Discover","tab_Mine"]

        for (index,className) in classArr.enumerated() {
            //第一步：获取项目名称
            let clsName = Bundle.main.infoDictionary!["CFBundleExecutable"] as? String
            //第二步：拼接参数字符串 项目名+.+需要加载的类的名称
            let vcView = NSClassFromString(clsName! + "." + className) as! BaseViewController.Type
            print(vcView)

            let root:BaseViewController = vcView.init()

            self.addChildController(childController: root, title: titleArr[index], imageName: normalImgArr[index], selectedImageName:selectImgArr[index])
        }
    }
    
    func addChildController(childController:BaseViewController, title:String,imageName:String,selectedImageName:String) {
        
        childController.title = title;
        childController.tabBarItem.image = UIImage.init(named: imageName)?.withRenderingMode(.alwaysOriginal)
        childController.tabBarItem.selectedImage = UIImage.init(named: selectedImageName)?.withRenderingMode(.alwaysOriginal)
        // 设置一下选中tabbar文字颜色
        childController.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor:UIColor.init("#D96139")], for: .selected)
        childController.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor:UIColor.init("#403632")], for: .normal)
        
        let nav = BaseNavigationController.init(rootViewController:childController)
        self.addChild(nav)
    }
    
}
