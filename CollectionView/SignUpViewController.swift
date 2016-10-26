//
//  SignUpViewController.swift
//  CollectionViewMy
//
//  Created by Andrey Kravchenko on 23.10.16.
//  Copyright © 2016 Tester. All rights reserved.
//

import UIKit
import CoreData

class SignUpViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var profilePictureImageView: UIImageView!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var passwordRepeatTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if(profilePictureImageView == nil) {
            //profilePictureImageView.image = UIImage(named: "Cat.png")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
// нажатие кнопки Cancel
    @IBAction func doneButtonTapped(_ sender: AnyObject) {
    self.dismiss(animated: true, completion: nil)
    }

    /*
     // нажатие кнопки Select profile photo from camera
     
     @IBAction func chooseProfileButtonTapped(_ sender: AnyObject) {
     
     if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.camera) {
     let imagePicker = UIImagePickerController()
     imagePicker.delegate = self
     imagePicker.sourceType = UIImagePickerControllerSourceType.camera;
     imagePicker.allowsEditing = false
     self.present(imagePicker, animated: true, completion: nil)
     }
     }
     */
    
// Pressed Select profile photo
    
    @IBAction func chooseProfileButtonTapped(_ sender: AnyObject) {

        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.photoLibrary) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerControllerSourceType.photoLibrary;
            imagePicker.allowsEditing = true
            self.present(imagePicker, animated: true, completion: nil)
        }
    }
// add a delegate to our class
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage!, editingInfo: [NSObject : AnyObject]!) {
        profilePictureImageView.image = image
        self.dismiss(animated: true, completion: nil);
    }
    // pressed Save
    
    @IBAction func saveButt(_ sender: AnyObject) {
        let imageData = UIImageJPEGRepresentation(profilePictureImageView.image!, 0.6)
        let compressedJPGImage = UIImage(data: imageData!)
        UIImageWriteToSavedPhotosAlbum(compressedJPGImage!, nil, nil, nil)
        
        let alert:UIAlertController = UIAlertController(title: "Save", message: "Your image has been saved to Photo Library", preferredStyle: UIAlertControllerStyle.alert)
        let action:UIAlertAction = UIAlertAction(title: "Close", style: UIAlertActionStyle.default) { (a:UIAlertAction) -> Void in
            print("item selected!")
        }
        alert.show(alert, sender: action)
    }
 }
