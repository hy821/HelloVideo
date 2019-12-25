//
//  Const.swift
//  HelloVideo
//
//  Created by young He on 2019/12/24.
//  Copyright © 2019 128yh. All rights reserved.
//

import Foundation

import SnapKit

let ScreenWidth = UIScreen.main.bounds.size.width
let ScreenHeight = UIScreen.main.bounds.size.height

let MainWindow = UIApplication.shared.keyWindow
let ContentOffsetInTop = UIApplication.shared.statusBarFrame.size.height == 44 ? 88 : 64

//状态栏高度: 全面屏44pt，非全面屏20pt
let StatusBarHeight = UIApplication.shared.statusBarFrame.height;
//导航栏高度
let NavigationHeight = (StatusBarHeight + 44)
//tabbar高度
let TabBarHeight = (StatusBarHeight==44 ? 83 : 49)
//顶部的安全距离
let TopSafeAreaHeight = (StatusBarHeight - 20)
//底部的安全距离: 全面屏为34pt, 其他为0
let BottomSafeAreaHeight = (TabBarHeight - 49)


let img_placeHolder = UIImage.init(named:"img_placeHolder")
let img_placeHolderIcon = UIImage.init(named:"img_placeHolderIcon")

let System_Color = UIColor.init("#D96139")
let System_BgColor = UIColor.init("#E1FFFF")
let Clear_Color = UIColor.clear
let Black_Color = UIColor.black
let White_Color = UIColor.white
let Blue_Color = UIColor.blue
let Brown_Color = UIColor.brown
let DarkGray_Color = UIColor.darkGray
let DarkText_Color = UIColor.darkText
let Yellow_Color = UIColor.yellow
let Red_Color = UIColor.red
let Magenta_Color = UIColor.magenta //品红色
let Orange_Color = UIColor.orange
let Purple_Color = UIColor.purple
let LightText_Color = UIColor.lightText
let LightGray_Color = UIColor.lightGray
let Green_Color = UIColor.green
let Gray_Color = UIColor.gray
