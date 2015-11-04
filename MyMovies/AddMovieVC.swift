//
//  AddMovieVC.swift
//  MyMovies
//
//  Created by Mike Pitre on 11/4/15.
//  Copyright © 2015 Mike Pitre. All rights reserved.
//

import UIKit

class AddMovieVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var titleLbl: UITextField!
    @IBOutlet weak var reasonLbl: UITextField!
    @IBOutlet weak var plotLbl: UITextField!
    @IBOutlet weak var imdbLbl: UITextField!
    @IBOutlet weak var movieImg: UIImageView!
    @IBOutlet weak var addImgBtn: UIButton!
    
    var imagePicker: UIImagePickerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        movieImg.clipsToBounds = true
        movieImg.layer.cornerRadius = 5.0
        
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        imagePicker.dismissViewControllerAnimated(true, completion: nil)
        movieImg.image = image
    }
    
    
    @IBAction func addImgBtnPressed(sender: AnyObject) {
        presentViewController(imagePicker, animated: true, completion: nil)
    }

    @IBAction func addToMoviesPressed(sender: AnyObject) {
        
    }
   

}
