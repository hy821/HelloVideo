//
//  CommonTopSearchView.swift
//  HelloVideo
//
//  Created by young He on 2019/12/22.
//  Copyright © 2019 128yh. All rights reserved.
//  高度: NavigationHeight = 状态栏 + 7 + SearchBtnHeight(30) + 7

import UIKit

class CommonTopSearchView: UIView {

    private let SearchBtnHeight:CGFloat = 30
        
    required init?(coder: NSCoder) {
        fatalError("NSCoding not supported")
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        initUI()
    }
    
    private lazy var searchBtn:UIButton = {
        let searchBtn = UIButton()
        searchBtn.backgroundColor = UIColor.init("#F8F8F8")
        searchBtn.setTitleForAllStates("余庆年")
        searchBtn.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        searchBtn.setTitleColorForAllStates(UIColor.init("#D8D8D8"))
        searchBtn.setImageForAllStates(UIImage.init(named:"ic_homepage_search") ?? img_placeHolder!)
        searchBtn.addTarget(self, action:#selector(searchAction), for: UIControl.Event.touchUpInside)
        searchBtn.layer.masksToBounds = true;
        searchBtn.layer.cornerRadius = SearchBtnHeight/2.0;
        return searchBtn
    }()
    
    func initUI() {
        backgroundColor = UIColor.white
        addSubview(searchBtn)
        
        //待解决
        let StatusBarHeight = UIApplication.shared.statusBarFrame.height;
        
        searchBtn.snp.makeConstraints { (make) in
            make.edges.equalToSuperview().inset(UIEdgeInsets(top: (StatusBarHeight+7), left: 10, bottom: 7, right: 10))
        }
        
    }
    
    @objc private func searchAction() {
        
    }
    
}
