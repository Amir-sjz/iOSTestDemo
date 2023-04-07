//
//  ViewController.swift
//  iOSTestDemo_S
//
//  Created by chengz on 2023/3/18.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

struct HPActivityModel: Codable {
    var anchor: String? //埋点
    var high: String? //图标链接
    var method: Int? //请求方式
    /// 图片比例
    var picRatio: String?
    /// 图片url
    var picUrl: String?
    /// title
    var title: String?
    var url: String?
    /// width
    var width: String?
    var tips: String?
}

