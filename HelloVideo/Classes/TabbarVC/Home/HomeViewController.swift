//
//  HomeViewController.swift
//  HelloVideo
//
//  Created by young He on 2019/12/17.
//  Copyright © 2019 128yh. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController {

//    let tabBar = TYTabPagerBar()
//    let pagerController = TYPagerController()
//    let categoryArr = NSMutableArray() //<HomeCategoryModel>
//    let topSearchView = CommonTopSearchView()
    
    lazy var topSearchView: CommonTopSearchView = {
        let topSearchView = CommonTopSearchView.init()
        return topSearchView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = System_BgColor
        navigationController?.navigationBar.isHidden = true
        
        view.addSubview(topSearchView)
        topSearchView.snp.makeConstraints { (make) in
            make.top.left.right.equalToSuperview()
            make.height.equalTo(NavigationHeight)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let vc:VideoDetailController = VideoDetailController.init()
        vc.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
