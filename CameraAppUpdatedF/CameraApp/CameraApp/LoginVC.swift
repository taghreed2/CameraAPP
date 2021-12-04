//
//  LoginVC.swift
//  CameraApp
//
//  Created by TAGHREED on 27/04/1443 AH.
//
import UIKit

class LoginVC: UIViewController {
    
    let welcomeLable = UILabel()
    let loginImg = UIImageView(image: UIImage(named: "moments.png"))
    let userField = UITextField()
    let passField = UITextField()
    let loginButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        welcomeLable.frame = CGRect(x: 25 , y: 100 , width: 365, height: 31)
        //        welcomeLable.backgroundColor = .gray
        welcomeLable.textAlignment = .center
        view.addSubview(welcomeLable)
        welcomeLable.text = "welcome to Moments App"
        
        loginImg.frame = CGRect(x: 90 , y: 200 , width: 200, height: 190)
        //        loginImg.backgroundColor = .gray
        view.addSubview(loginImg)
        
        userField.frame = CGRect(x: 25, y: 550, width: 365, height: 31)
        userField.borderStyle = .roundedRect
        userField.layer.cornerRadius = 5
        //        userField.backgroundColor = .gray
        view.addSubview(userField)
        userField.placeholder = "Enter your name"
        
        passField.frame = CGRect(x: 25, y: 600, width: 365, height: 31)
        passField.borderStyle = .roundedRect
        passField.layer.cornerRadius = 5
        //        passField.backgroundColor = .gray
        view.addSubview(passField)
        passField.placeholder = "Enter your password"
        
        loginButton.frame = CGRect(x: 25 , y: 650 , width: 365, height: 31)
        loginButton.setTitle("Login", for: .normal)
        loginButton.layer.cornerRadius = 5
        loginButton.backgroundColor = .black
        view.addSubview(loginButton)
        
        
        loginButton.addTarget(self, action: #selector(login), for: .touchDown)
        
        
        
        
    }
    
    
    
    
    @objc func login(){
        
        
        
        let vc = ViewController()
        vc.name = userField.text ?? ""
        present(vc, animated: true, completion: nil)
        
        
        
    }
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
}
