//
//  MineViewController.swift
//  HelloVideo
//
//  Created by young He on 2019/12/17.
//  Copyright © 2019 128yh. All rights reserved.
//

import UIKit

class MineViewController: BaseViewController {

     lazy var topSearchView: CommonTopSearchView = {
          let topSearchView = CommonTopSearchView.init()
          return topSearchView
      }()
      
      override func viewDidLoad() {
          super.viewDidLoad()
          view.backgroundColor = System_BgColor
          fd_prefersNavigationBarHidden = true
          
          view.addSubview(topSearchView)
          topSearchView.snp.makeConstraints { (make) in
              make.top.left.right.equalToSuperview()
              make.height.equalTo(NavigationHeight)
          }
      }
}
