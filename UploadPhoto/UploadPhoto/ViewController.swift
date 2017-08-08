//
//  ViewController.swift
//  UploadPhoto
//
//  Created by Puneet on 08/08/17.
//  Copyright © 2017 PuneetGupta. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UINavigationControllerDelegate, UIImagePickerControllerDelegate,UIGestureRecognizerDelegate {

    @IBOutlet weak var myImageView: UIImageView!
    
    
    @IBAction func uploadImage(_ sender: Any) {
        
        let image = UIImagePickerController()
        image.delegate = self
        
        image.sourceType = UIImagePickerControllerSourceType.photoLibrary
        image.allowsEditing = false
        
        
        self.present(image, animated:true) {
            
        }
    }
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
            if let image = info[
                UIImagePickerControllerOriginalImage] as? UIImage {
                
                myImageView.image = image
            }
            else {
                //error message
            }
            self.dismiss(animated: true, completion: nil)
        }

        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let tap = UITapGestureRecognizer(target: self, action: #selector(imageTapped))
        tap.delegate = self
        myImageView.isUserInteractionEnabled = true
        myImageView.addGestureRecognizer(tap)
        
    }

    
    func imageTapped() {
        
        let image = UIImagePickerController()
        image.delegate = self
        
        image.sourceType = UIImagePickerControllerSourceType.photoLibrary
        image.allowsEditing = false
        
        
        self.present(image, animated:true) {
            
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

