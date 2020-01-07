//
//  DiscoverViewController.swift
//  HelloVideo
//
//  Created by young He on 2019/12/17.
//  Copyright © 2019 128yh. All rights reserved.
//

import UIKit

class DiscoverViewController: BaseViewController {

     lazy var mainTableView: UITableView = {
        let tempTableView = UITableView (frame: CGRect.zero, style:.plain)
        tempTableView.rowHeight = 50
        tempTableView.delegate = (self as! UITableViewDelegate)
        tempTableView.dataSource = self
        tempTableView.backgroundColor = LightGray_Color
        tempTableView.separatorStyle = .singleLine
        tempTableView.separatorStyle = .none
        tempTableView.showsVerticalScrollIndicator = false

        tempTableView.register(DiscoverCell.self, forCellReuseIdentifier: "DiscoverCell")
        
        return tempTableView
     }()
    
    var listArr:[ProgramResultListModel] = []
    var cursor = "-1"  //-1 下拉刷新
    var slip = "02"  //首页热门频道时: 01-> 上滑加载更多， 02-> 下拉刷新
    
    lazy var topSearchView: CommonTopSearchView = {
        let topSearchView = CommonTopSearchView.init()
        return topSearchView
    }()
    
      override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = System_BgColor
        fd_prefersNavigationBarHidden = true
        
        initUI()
        loadDataWithAnimation()
       
    }
    
    func initUI() {
        view.addSubview(topSearchView)
        topSearchView.snp.makeConstraints { (make) in
            make.top.left.right.equalToSuperview()
            make.height.equalTo(NavigationHeight)
        }
        view.addSubview(mainTableView)
        mainTableView.snp.makeConstraints { (make) in
            make.top.equalTo(topSearchView.snp.bottom)
            make.left.right.bottom.equalToSuperview()
        }
    }
    
    func loadDataWithAnimation() {
        
        
        
    }

}

extension DiscoverViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return listArr.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "DiscoverCell_ID", for: indexPath) as! DiscoverCell
    let model = listArr[indexPath.row]
    
    return cell
  }
}
