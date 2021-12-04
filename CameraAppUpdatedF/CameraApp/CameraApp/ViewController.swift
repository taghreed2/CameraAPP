//
//  ViewController.swift
//  CameraApp
//
//  Created by TAGHREED on 27/04/1443 AH.
//
import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    let myButton = UIButton()
    let welcomeLable = UILabel()
    let nameLable = UILabel()
    var name = "User"
    let emptyImage = UIImageView() //empty photos bg
    let bg = UIImageView() //background image
    override func viewDidLoad() {
        super.viewDidLoad()
    
        view.backgroundColor = .white
        
        welcomeLable.frame = CGRect(x: 25 , y: 50 , width: 365, height: 30)
        welcomeLable.text = "Welcome"
        view.addSubview(welcomeLable)
        welcomeLable.textColor = .black
        welcomeLable.textAlignment = .center
        
        nameLable.frame = CGRect(x: 25 , y: 80 , width: 365, height: 30)
        nameLable.text = name
        view.addSubview(nameLable)
        nameLable.textColor = .black
        nameLable.textAlignment = .center
        
        emptyImage.frame = CGRect(x: 35 , y: 170 , width: 350, height: 800)
        emptyImage.image = UIImage(named: "noPhotosYet")
        emptyImage.frame.size.width = 350
        emptyImage.frame.size.height = 600
        emptyImage.center = self.view.center
        emptyImage.layer.cornerRadius = 15
        emptyImage.contentMode = .scaleAspectFit
        view.addSubview(emptyImage)
        
        
        myButton.frame = CGRect(x: 180 , y: 750 , width: 50, height: 50)
        myButton.backgroundColor = .gray
        view.addSubview(myButton)
        myButton.addTarget(self, action: #selector(buttonFunc), for: .touchDown)
        myButton.layer.cornerRadius = 15
        myButton.setImage(UIImage(systemName: "camera.viewfinder"), for: .normal)
        
    }
    
    @objc func buttonFunc(){
        
        let cameraView = UIImagePickerController()
        cameraView.delegate = self
        cameraView.sourceType = .camera
        self.present(cameraView, animated: true, completion: nil)
        
    }
    
    
// to pic the image
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let pickedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        emptyImage.image = pickedImage
        picker.dismiss(animated: true, completion: nil)
        
        
        
        
        
    }
    

    override var prefersStatusBarHidden: Bool{
        return true
    }

}

