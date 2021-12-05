//
//  ViewController.swift
//  CameraApp
//
//  Created by TAGHREED on 27/04/1443 AH.
//
import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    let myImage = UIImageView()
    let myButton = UIButton(type: .custom)
    let welcomeLable = UILabel()
    let nameLable = UILabel()
    var name = "User"
    let emptyImage = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 0.9080924988, green: 0.9080924988, blue: 0.9080924988, alpha: 1)
        
        welcomeLable.frame = CGRect(x: 25 , y: 50 , width: 365, height: 31)
        welcomeLable.text = "Welcome"
        welcomeLable.font = .monospacedSystemFont(ofSize: 25, weight: .regular)
        view.addSubview(welcomeLable)
        welcomeLable.textColor = .black
        welcomeLable.textAlignment = .center
        
        nameLable.frame = CGRect(x: 25 , y: 80 , width: 365, height: 31)
        nameLable.text = name
        view.addSubview(nameLable)
        nameLable.textColor = .black
        nameLable.textAlignment = .center
        
        emptyImage.frame = CGRect(x: 25 , y: 70 , width: 365, height: 700)
        emptyImage.image = UIImage(named: "noPhotosYet")
        emptyImage.layer.cornerRadius = 15
        emptyImage.contentMode = .scaleAspectFit
        view.addSubview(emptyImage)
        
        
        myButton.frame = CGRect(x: 25 , y: 730 , width: 365, height: 40)
        myButton.setTitle("Take a Photo", for: .normal)
        myButton.backgroundColor = #colorLiteral(red: 1, green: 0.7008959651, blue: 0.8431851864, alpha: 1)
        myButton.addTarget(self, action: #selector(buttonFunc), for: .touchDown)
        myButton.layer.cornerRadius = 5
        view.addSubview(myButton)
        
        
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

