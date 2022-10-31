//
//  FirstViewController.swift
//  NextVC
//
//  Created by 박다미 on 2022/10/30.
//

import UIKit

class FirstViewController: UIViewController {

    let mainLabel = UILabel()
    //closer 사용
    let backBtn : UIButton = {
        
        let btn = UIButton(type: .custom)
        
        btn.setTitle("Back", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.backgroundColor = .blue
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        btn.addTarget(self, action: #selector(backbtnTapped), for: .touchUpInside)
      
        return btn
        
    }()
    
    //데이터 받기
    var someString : String? //optional String 로 해야 초기값 안줘도 됨 nill로 된다.
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
        makeAutoLayout()
        //위 코드 정리
        
        func setup(){
            mainLabel.text = someString  //"FirstViewController"
            mainLabel.font = UIFont.systemFont(ofSize: 22)
            
            view.addSubview(mainLabel) //화면에 올리기
            view.addSubview(backBtn)
            view.backgroundColor = .gray
          
            
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
        

        
        
        
        
    }
    @objc func backbtnTapped(){
        
        print("뒤로가기 버튼이 눌렸음")
        dismiss(animated: true, completion: nil)
    }

    

}
