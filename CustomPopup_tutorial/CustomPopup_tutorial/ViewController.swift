//
//  ViewController.swift
//  CustomPopup_tutorial
//
//  Created by 진예원 on 2020/09/11.
//  Copyright © 2020 진예원. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    @IBOutlet weak var createPopUpBtn: UIButton!
    @IBOutlet weak var myWebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func onCreatePopUpBtnClicked(_ sender: UIButton) {
        
        print("ViewController - onCreatePopUpBtnClicked() called")
        
        // storyboard 가져오기
        let storyboard = UIStoryboard.init(name: "Popup", bundle: nil)
        
        // 스토리보드를 통해 viewController 가져오기
        let alertPopupVC = storyboard.instantiateViewController(withIdentifier: "AlertPopupVC") as! CustomPopupViewController
        
        // 뷰컨트롤러가 보여지는 스타일
        alertPopupVC.modalPresentationStyle = .overCurrentContext
        
        // 뷰 컨트롤러가 사라지는 스타일
        alertPopupVC.modalTransitionStyle = .crossDissolve
        
        alertPopupVC.githubBtnCompletionColosure = {
            print("컴플레션 블럭이 호출되었다.")
            
            let myGithubUrl = URL(string: "https://github.com/ye-wonii")
            self.myWebView.load(URLRequest(url: myGithubUrl!))
        }
        
        self.present(alertPopupVC, animated: true, completion: nil)
    }
    

}

