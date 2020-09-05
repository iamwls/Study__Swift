//
//  ViewController.swift
//  NiceApp
//
//  Created by 진예원 on 2020/09/05.
//  Copyright © 2020 진예원. All rights reserved.
//

import UIKit
import Lottie

class MainViewController: UIViewController {
    
    let titleLabel: UILabel = {
        
        let label = UILabel()
        label.textColor = .black
        label.textAlignment = .center
        label.text = "메인화면"
        label.font = UIFont.boldSystemFont(ofSize: 70)
        return label
    }()

    let animationView: AnimationView = {
        
        let animView = AnimationView(name: "31669-rubiks-cube")
        animView.frame = CGRect(x:0,y:0,width: 200, height: 200)
        animView.contentMode = .scaleAspectFill
        
        return animView
        
    }()
    
    //뷰가 생성되었을때
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .white
        view.addSubview(animationView)
        animationView.center = view.center
    
        
        
        
        // 애니메이션 실행
        animationView.play{ (finish) in
                
            print("애니메이션이 종료되었다.")
            
            self.view.backgroundColor = .white
            
            //애니메이션 삭제
            self.animationView.removeFromSuperview()
            
            self.view.addSubview(self.titleLabel)
            
            self.titleLabel.translatesAutoresizingMaskIntoConstraints = false
            self.titleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
            self.titleLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
            
            
        }
    }


}

