//
//  ViewController.swift
//  LoginForm
//
//  Created by Jordan Peralta on 2022-03-12.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var passWord: UITextField!
    @IBOutlet weak var userInfo: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.sendSubviewToBack(image)
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "bg.jpg")!)
    }
    
    @IBAction func loginBtn(_ sender: Any) {
        let pw = passWord?.text?.count
        userInfo.text = "Your username is : " + userName.text! + "\n" +
        "Your password has \(pw!) characters."
    }
}
