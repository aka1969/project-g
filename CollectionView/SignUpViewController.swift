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

 // нажатие кнопки Select profile photo
    
    @IBAction func chooseProfileButtonTapped(_ sender: AnyObject) {
        let myPickerController = UIImagePickerController()
        myPickerController.delegate = self;
        myPickerController.sourceType = UIImagePickerControllerSourceType.photoLibrary
        self.present(myPickerController, animated: true, completion: nil)
    }
    @nonobjc func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any])
    {
      profilePictureImageView.image = info[UIImagePickerControllerOriginalImage] as? UIImage
        self.dismiss(animated: true, completion: nil)
    }
 }
