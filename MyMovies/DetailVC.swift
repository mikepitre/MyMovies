//
//  DetailVC.swift
//  MyMovies
//
//  Created by Mike Pitre on 11/4/15.
//  Copyright © 2015 Mike Pitre. All rights reserved.
//

import UIKit
import CoreData

class DetailVC: UIViewController {
    
    var movie: Movie!
    
    
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var movieImg: UIImageView!
    @IBOutlet weak var imdbLbl: UILabel!
    @IBOutlet weak var plotLbl: UILabel!
    @IBOutlet weak var reasonLbl: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLbl.text = movie.title
        movieImg.image = movie.getMovieImg()
        imdbLbl.text = movie.imdb
        plotLbl.text = movie.plot
        reasonLbl.text = movie.reason
        

        movieImg.clipsToBounds = true
        movieImg.layer.cornerRadius = 5.0
    }
    

}