//
//  CustomPopupViewController.swift
//  CustomPopup_tutorial
//
//  Created by 진예원 on 2020/09/11.
//  Copyright © 2020 진예원. All rights reserved.
//

import UIKit

class CustomPopupViewController: UIViewController {
    
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var githubBtn: UIButton!
    @IBOutlet weak var bgBtn: UIButton!
    
    var githubBtnCompletionColosure: (() -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("CustomPopupViewController - viewDidLoad가 호출되었습니다.")
        
        contentView.layer.cornerRadius = 30
        githubBtn.layer.cornerRadius = 10
    }
    
    @IBAction func onGithubBtnClicked(_ sender: UIButton) {
        
       print("깃허브 버튼이 클릭되었습니다.")
        
        self.dismiss(animated: true, completion: nil)
        
        // 컴플레션 블럭 호출
        if let githubBtnCompletionClosure = githubBtnCompletionColosure{
            
            // 메인에 알린다.
            githubBtnCompletionColosure!()
        }
    
    }
    
    @IBAction func bgBtnClicked(_ sender: UIButton) {
        
        print("클릭되었습니다.")
        self.dismiss(animated: true, completion: nil)
    }
    
}
