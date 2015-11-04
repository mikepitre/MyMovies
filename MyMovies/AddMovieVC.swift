//
//  AddMovieVC.swift
//  MyMovies
//
//  Created by Mike Pitre on 11/4/15.
//  Copyright © 2015 Mike Pitre. All rights reserved.
//

import UIKit

class AddMovieVC: UIViewController {
    
    @IBOutlet weak var titleLbl: UITextField!
    @IBOutlet weak var reasonLbl: UITextField!
    @IBOutlet weak var plotLbl: UITextField!
    @IBOutlet weak var imdbLbl: UITextField!
    @IBOutlet weak var movieImg: UIImageView!
    @IBOutlet weak var addImgBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        movieImg.clipsToBounds = true
        movieImg.layer.cornerRadius = 5.0
    }

    @IBAction func addToMoviesPressed(sender: AnyObject) {
    }
   

}
