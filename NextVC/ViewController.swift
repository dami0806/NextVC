//
//  ViewController.swift
//  NextVC
//
//  Created by 박다미 on 2022/10/30.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // 1) 코드로 화면이동(다음화면이 코드로 작성되있을때만 가능)
    @IBAction func codeNextBtnTapped(_ sender: UIButton) {
        
        let firstVC = FirstViewController()
        firstVC.someString = "아기상어"
        //firstVC.mainLabel.text = "아기상어" 직접 접근해서 사용하지 말자
        firstVC.modalPresentationStyle = .fullScreen
        present(firstVC, animated: true, completion: nil) //첫번째 파라밑터,  다끝나면 뭘할지
        
        
    }
    
    // 2) 코드로 "스토리보드 객체를 생성해서" 화면이동
    @IBAction func storyboardWithCodeBtnTapped(_ sender: UIButton) {
//        let SecondVC = storyboard?.instantiateViewController(withIdentifier: "secondVC") as! SecondViewController
//        present(SecondVC, animated: true, completion: nil)
        guard let SecondVC = storyboard?.instantiateViewController(withIdentifier: "secondVC") as?SecondViewController else{return}
        SecondVC.modalPresentationStyle = .fullScreen
        SecondVC.someString = "아빠상어"
        
        present(SecondVC, animated: true, completion: nil)
      
        
    }
    
    
    // 3) 코드로 화면이동(다음화면이 코드로 작성되있을때만 가능)
    @IBAction func storyboardWithSegue(_ sender: UIButton) {
        performSegue(withIdentifier: "toThirdVC", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toThirdVC" {
            let third = segue.destination as! ThirdViewController //구체적으로 VC에 넣기
            third.someString = "엄마상어"
            
        }
        if segue.identifier == "toFourthVC" {
            let fourth = segue.destination as! FourthViewController //구체적으로 VC에 넣기
            fourth.someString = "뚜루루뚜루"
            
        }
        
    }
    //4번처럼 직접 연결 되어있는것만 가능(조건문 넣기)
    var num = 3
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if num<5{
            return true}
        else{
            return false}
    }
    // 4) 스토리보드에서 화면이동(간접 세그웨이)
    @IBAction func storyboardWithBtnSegue(_ sender: UIButton) {
        
        
        
    }
    
}

