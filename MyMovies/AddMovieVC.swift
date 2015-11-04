//
//  AddMovieVC.swift
//  MyMovies
//
//  Created by Mike Pitre on 11/4/15.
//  Copyright © 2015 Mike Pitre. All rights reserved.
//

import UIKit
import CoreData

class AddMovieVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UITextFieldDelegate {
    
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
        if let title = titleLbl.text where title != "" {
            let app = UIApplication.sharedApplication().delegate as! AppDelegate
            let context = app.managedObjectContext
            let entity = NSEntityDescription.entityForName("Movie", inManagedObjectContext: context)!
            let movie = Movie(entity: entity, insertIntoManagedObjectContext: context)
            
            movie.title = title
            movie.reason = reasonLbl.text
            movie.plot = plotLbl.text
            movie.imdb = imdbLbl.text
            movie.setMovieImg(movieImg.image!)
            
            
            context.insertObject(movie)
            
            do {
                try context.save()
            } catch {
                print("Could not save movie.")
            }
            
            self.navigationController?.popViewControllerAnimated(true)
            
        }
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        titleLbl.resignFirstResponder()
        reasonLbl.resignFirstResponder()
        plotLbl.resignFirstResponder()
        imdbLbl.resignFirstResponder()
        return true
    }
    
   

}
