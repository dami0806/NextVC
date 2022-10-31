//
//  SecondViewController.swift
//  NextVC
//
//  Created by 박다미 on 2022/10/31.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var mainLable: UILabel!
    
    var someString:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        mainLable.text = someString
        

    }
    

    @IBAction func backBtnTapped(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
