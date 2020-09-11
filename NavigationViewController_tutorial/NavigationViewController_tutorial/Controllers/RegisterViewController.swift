//
//  RegisterViewController.swift
//  NavigationViewController_tutorial
//
//  Created by 진예원 on 2020/09/10.
//  Copyright © 2020 진예원. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var btnForLoginViewController: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 상단바 숨김처리
        self.navigationController?.isNavigationBarHidden = true
    }

    @IBAction func onLoginViewControllerBtnClicked(_ sender: UIButton) {
        
        print("클릭되었습니다.")
        
        // 네비게이션 뷰 컨트롤러를 팝 한다.
        self.navigationController?.popViewController(animated: true)
        
    }
    
}

