//
//  FirstViewController.swift
//  NextVC
//
//  Created by 박다미 on 2022/10/30.
//

import UIKit

class FirstViewController: UIViewController {

    let mainLabel = UILabel()
    let backBtn = UIButton(type: .system)
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        mainLabel.text = "FirstViewController"
//        view.addSubview(mainLabel) //화면에 올리기
//
//
//        //먼저 자동 꺼주기
//        mainLabel.translatesAutoresizingMaskIntoConstraints = false
//        //오토레이아웃 설정
//        mainLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
//        mainLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
//
//
//
//        backBtn.setTitle("Back", for: .normal)
//        backBtn.setTitleColor(.white, for: .normal)
//        backBtn.backgroundColor = .blue
//        backBtn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
//        view.addSubview(backBtn)
//
//        backBtn.translatesAutoresizingMaskIntoConstraints = false
//        backBtn.widthAnchor.constraint(equalToConstant: 70).isActive = true
//        backBtn.heightAnchor.constraint(equalToConstant: 40).isActive = true
//        backBtn.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
//        backBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        setup()
        makeAutoLayout()
        //위 코드 정리
        
        func setup(){
            mainLabel.text = "FirstViewController"
                       view.addSubview(mainLabel) //화면에 올리기
            
            backBtn.setTitle("Back", for: .normal)
            backBtn.setTitleColor(.white, for: .normal)
            backBtn.backgroundColor = .blue
            backBtn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
            view.addSubview(backBtn)
            
        }
        func makeAutoLayout(){
           
            
          
            //먼저 자동 꺼주기
            mainLabel.translatesAutoresizingMaskIntoConstraints = false
            //오토레이아웃 설정
            mainLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
            mainLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
            
            
            
           
            
            backBtn.translatesAutoresizingMaskIntoConstraints = false
            backBtn.widthAnchor.constraint(equalToConstant: 70).isActive = true
            backBtn.heightAnchor.constraint(equalToConstant: 40).isActive = true
            backBtn.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
            backBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        }
        
        //동작
        backBtn.addTarget(self, action: #selector(@objc backbtnTapped()), for: .touchUpInside)
        
        
        
        
    }
    @objc func backbtnTapped(){
        
        
    }

    

}
