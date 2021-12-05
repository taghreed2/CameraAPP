//
//  LoginVC.swift
//  CameraApp
//
//  Created by TAGHREED on 27/04/1443 AH.
//
import UIKit

class LoginVC: UIViewController, UITextFieldDelegate {
    
    let welcomeLable = UILabel(frame: CGRect(x: 25 , y: 80 , width: 365, height: 31))
    let loginImg = UIImageView(image: UIImage(named: "moments.png"))
    let userField = UITextField(frame: CGRect(x: 25, y: 300, width: 365, height: 31))
    let passField = UITextField(frame: CGRect(x: 25, y: 350, width: 365, height: 31))
    let loginButton = UIButton(frame: CGRect(x: 25 , y: 400 , width: 365, height: 31))
    let forgotLabel = UILabel(frame: CGRect(x: 25, y: 450, width: 365, height: 31))
    // var timer = Timer()
    //let launchScreenImg = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.7259152532, green: 0.7259152532, blue: 0.7259152532, alpha: 1)
        //timer = Timer.scheduledTimer(timeInterval: 3.0, target: self, selector:
        //#selector(launchScreen), userInfo: nil, repeats: false) //the timer of the view
        self.userField.delegate = self
        self.passField.delegate = self
        
        
        //  launchScreenImg.image = UIImage(named: "momentsLaunch.jpg")
        
        welcomeLable.textAlignment = .center
        view.addSubview(welcomeLable)
        welcomeLable.text = "welcome to Moments App"
        welcomeLable.textColor = .white
        welcomeLable.font = .monospacedSystemFont(ofSize: 25, weight: .bold)
        
        loginImg.frame = CGRect(x: 90 , y: 100 , width: 200, height: 190)
        view.addSubview(loginImg)
        
        userField.borderStyle = .roundedRect
        userField.font = .monospacedSystemFont(ofSize: 15, weight: .regular)
        view.addSubview(userField)
        userField.placeholder = "Enter your name"
        
        passField.borderStyle = .roundedRect
        passField.font = .monospacedSystemFont(ofSize: 15, weight: .regular)
        view.addSubview(passField)
        passField.placeholder = "Enter your password"
        
        loginButton.setTitle("Login", for: .normal)
        loginButton.layer.cornerRadius = 5
        loginButton.titleLabel?.font = UIFont(name: "Menlo", size: 15)
        loginButton.backgroundColor = #colorLiteral(red: 1, green: 0.7008959651, blue: 0.8431851864, alpha: 1)
        view.addSubview(loginButton)
        loginButton.addTarget(self, action: #selector(login), for: .touchDown)
        
        forgotLabel.text = "Forgot password ?"
        forgotLabel.textColor = .white
        forgotLabel.font = .monospacedSystemFont(ofSize: 15, weight: .regular)
        forgotLabel.textAlignment = .left
        view.addSubview(forgotLabel)
        
        
        
        
    }
    
    //    @objc func launchScreen(){
    //        view.addSubview(launchScreenImg) //it should show the launch screen at the begining
    //    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        userField.resignFirstResponder()
        passField.resignFirstResponder()
        return true
    } //to return the keyboard after enter "enter" button...
    
    
    @objc func login(){
        
        if userField.text?.isEmpty == false && passField.text?.isEmpty == false{
            let vc = ViewController()
            vc.name = userField.text ?? "Guest"
            present(vc, animated: true, completion: nil)
        }
    }
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
}
