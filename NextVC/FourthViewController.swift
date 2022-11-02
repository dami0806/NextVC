//
//  FourthViewController.swift
//  NextVC
//
//  Created by 박다미 on 2022/11/02.
//

import UIKit

class FourthViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    
    var someString : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainLabel.text = someString
       
    }
    

    @IBAction func backBtnTapped(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
